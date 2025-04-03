return {
    {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false, -- Never set this value to "*"! Never!
    opts = {
      -- add any opts here
      -- for example
      provider = "openai",
      openai = {
        endpoint = "https://api.openai.com/v1",
        model = "gpt-4o", -- your desired model (or use gpt-4o, etc.)
        timeout = 30000, -- Timeout in milliseconds, increase this for reasoning models
        temperature = 0,
        max_tokens = 8192, -- Increase this to include reasoning tokens (for reasoning models)
        --reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
      },

      cursor_applying_provider = 'openai', -- In this example, use Groq for applying, but you can also use any provider you want.
      behaviour = {
        --- ... existing behaviours
        enable_cursor_planning_mode = true, -- enable cursor planning mode!
      },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "echasnovski/mini.pick", -- for file_selector provider mini.pick
      "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
      "ibhagwan/fzf-lua", -- for file_selector provider fzf
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },

  { "github/copilot.vim" },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      { "github/copilot.vim" }, -- or github/copilot.vim
    },
    opts = {
      debug = true, -- Enable debugging
    },
    keys = {
      {
        "<leader>ccq",
        function()
          local input = vim.fn.input("Quick Chat: ")
          if input ~= "" then
            local cc = require("CopilotChat")
            cc.ask(input, { selection = require("CopilotChat.select").buffer })
          end
        end,
        desc = "CopilotChat - Quick chat",
        mode = "n",
      },
      {
        "<leader>cct",
        function()
          local cc = require("CopilotChat")
          cc.ask(
            [[Write tests for this please. These tests should cover the happy path
            and any error handling within each function. avoid using if statements 
            and use matchers instead. 
            ]], 
            { selection = require("CopilotChat.select").buffer }
          )
        end,
        desc = "CopilotChat - Write Tests for Buffer",
        mode = "n",
      },
      {
        "<leader>ccgt",
        function()
          local cc = require("CopilotChat")
          cc.ask(
            [[Write tests for this please. These tests should cover the happy path
            and any error handling within each function. avoid using if statements 
            and use matchers instead. 

            if writing golang follow these parameters:

            1. use strechr/testify for assertions. 
            2. use common/db/dbtest to instantiate the db and config
            3. always use the _test package convention for the tests
            4. db setup and teardown queries should be in a sql file under support/setup.sql and support/teardown.sql and read using the _ "embed" package
            5. there is no need to open a sql connection since dbtest will handle that for us
            6. db.Gx is imported from common/db and holds an instance of the db connection

```
package dbtest

import (
	"fmt"
	"testing"

	"common/config"
	"common/db"
	"common/errors"
	"common/templates"
)

func New(t *testing.T) *DBTest {
	return &DBTest{
		t: t,
	}
}

type DBTest struct {
	t               *testing.T
	setupQueries    []string
	teardownQueries []string
	assertions      []func(t *testing.T)
}

func (dbt *DBTest) SetupFromTPL(
	params interface{},
	tpls ...string,
) *DBTest {
	dbt.setupQueries = fromTpl(params, tpls)

	return dbt
}

func (dbt *DBTest) Setup(queries ...string) *DBTest {
	dbt.setupQueries = queries
	return dbt
}

func (dbt *DBTest) TeardownFromTPL(
	params interface{},
	tpls ...string,
) *DBTest {
	dbt.teardownQueries = fromTpl(params, tpls)
	return dbt
}

func (dbt *DBTest) Teardown(queries ...string) *DBTest {
	dbt.teardownQueries = queries
	return dbt
}

func (dbt *DBTest) Assertions(cb ...func(t *testing.T)) *DBTest {
	dbt.assertions = cb
	return dbt
}

func (dbt *DBTest) Exec() error {
	config.SetupMocks()
	db.Connect()

	defer teardown(dbt)

	if err := runQueries(dbt.setupQueries); err != nil {
		return err
	}

	for index, assertion := range dbt.assertions {
		name := fmt.Sprintf("assertion %d", index)
		dbt.t.Run(name, assertion)
	}

	return nil
}

func fromTpl(params interface{}, tpls []string) []string {
	queries := []string{}

	for _, tpl := range tpls {
		query, err := templates.ExecuteTemplate(tpl, tpl, params)
		if err != nil {
			panic(errors.Wrap(err, "dbtest failed to execute fromTpl"))
		}

		queries = append(queries, query)
	}

	return queries
}

func teardown(dbt *DBTest) {
	err := runQueries(dbt.teardownQueries)
	if err != nil {
		panic(err)
	}
}

func runQueries(queries []string) error {
	for _, query := range queries {
		_, err := db.Cx.Exec(query)
		if err != nil {
			return err
		}
	}

	return nil
}
            ```
            ]], 
            { selection = require("CopilotChat.select").buffer }
          )
        end,
        desc = "CopilotChat - Write Tests for Buffer",
        mode = "n",
      },
      {
        "<leader>cch",
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.telescope").pick(actions.help_actions())
        end,
        desc = "CopilotChat - Help actions",
        mode = "n",
      },
      -- Show prompts actions with telescope
      {
        "<leader>ccp",
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
        end,
        desc = "CopilotChat - Prompt actions",
        mode = "n",
      },
    },
  },
  -- {
  --   'Exafunction/codeium.vim',
  --   event = 'BufEnter',
  --   init = function()
  --     vim.keymap.set('i', '<c-]>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
  --     vim.keymap.set('i', '<c-[>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
  --     vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
  --   end
  -- }
}

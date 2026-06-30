{ pkgs, ... }:

{
  home.username = "caroccp";
  home.homeDirectory = "/home/caroccp";

  home.packages = with pkgs; [
    ripgrep
    fd
    eza
    bat
    fzf
    jq
    tree
    audacious
    libreoffice
  ];

  programs.git = {
    enable = true;
    userName = "Carolina Cuadra Pardo";
    userEmail = "74510425+cuadrapardo@users.noreply.github.com";
   };

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      ll = "eza -la";
      gs = "git status";
      rebuild = "sudo nixos-rebuild switch --flake ~/nixos-config";
      cleanup = "sudo nix-collect-garbage --delete-older-than 14d";
      cleanup-all = "sudo nix-collect-garbage -d";
      a-boost = "pamixer --allow-boost --set-volume 150";	
    };
  };
 
  programs.ssh = {
  enable = true;

  matchBlocks."github.com" = {
    hostname = "github.com";
    user = "git";
    identityFile = "~/.ssh/id_ed25519";
    identitiesOnly = true;
  };
};
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    extraPackages = with pkgs; [
      clang-tools
      cmake-language-server
      gdb
      tree-sitter
      ripgrep
      fd
    ];

    plugins = with pkgs.vimPlugins; [
      nvim-lspconfig
      nvim-cmp
      cmp-nvim-lsp
      luasnip

      nvim-treesitter.withAllGrammars

      telescope-nvim
      plenary-nvim

      lualine-nvim
      oil-nvim
    ];

    extraLuaConfig = ''
      vim.g.mapleader = " "

      vim.opt.number = true
      vim.opt.relativenumber = true
      vim.opt.expandtab = true
      vim.opt.shiftwidth = 4
      vim.opt.tabstop = 4
      vim.opt.smartindent = true
      vim.opt.termguicolors = true

      require("lualine").setup()
      require("oil").setup({
        columns = {},
      })

      require("telescope").setup({
        defaults = {
          path_display = { "truncate" },
        },
      })

      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = {
          { name = "nvim_lsp" },
        },
      })

      
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config("clangd", {
        capabilities = capabilities,
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--completion-style=detailed",
          "--header-insertion=iwyu",
        },
      })

      vim.lsp.enable("clangd")
      
      vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files)
      vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep)
      vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>")
      vim.keymap.set("n", "gd", vim.lsp.buf.definition)
      vim.keymap.set("n", "gr", vim.lsp.buf.references)
      vim.keymap.set("n", "K", vim.lsp.buf.hover)
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
      vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
    '';
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
  
  programs.kitty = {
    enable = true;
  };
  home.stateVersion = "26.05";
}

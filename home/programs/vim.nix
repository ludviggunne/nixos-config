{
  pkgs,
  ...
}:

{
  programs.vim = {
    enable = true;

    settings = {
      number = true;
      relativenumber = true;
    };

    plugins = with pkgs.vimPlugins; [
      fzfWrapper
      vim-lsp
      vim-lsp-settings
      echodoc-vim
      vim-surround
      vim-vinegar
      vim-visual-multi
      vim-cool
      vim-closer
      vim-eunuch
      vim-ReplaceWithSameIndentRegister
      vim-peekaboo
      vim-commentary
      undotree
      vim-fugitive
    ];

    extraConfig = ''
      nmap <Space> :FZF <CR>
    '';
  };
}

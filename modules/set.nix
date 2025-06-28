{config, ... }: {
        config.vim = {
                extraConfigVim = ''

                        set number
                        set relativenumber

                        unset showmode
                        
                        set tabstop=2
                        set softtabstop=2
                        set shiftwidth=2
                        set expandtab
                '';
        };
}

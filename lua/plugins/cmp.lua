return {
    -- Плагины для cmp
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/cmp-buffer"},
    {"hrsh7th/cmp-path"},
    {"hrsh7th/cmp-cmdline"},
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require('cmp')
            cmp.setup({
                -- Отключаем автоматическое появление меню автодополнения
                completion = {
                    autocomplete = false,  -- Отключаем автоматическое появление меню
                },
                mapping = {
                    -- Вызов автодополнения по нажатию <C-a>
                    ['<C-a>'] = cmp.mapping.complete(),

                    -- Закрытие меню автодополнения по <C-e>
                    ['<C-e>'] = cmp.mapping.close(),

                    -- Подтверждение выбора по <CR>
                    ['<CR>'] = cmp.mapping.confirm({
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = true,
                    }),

                    -- Переключение на следующий элемент по <C-a>
                    ['<C-a>'] = function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        else
                            cmp.mapping.complete()(fallback)
                        end
                    end,

                    -- Переключение на предыдущий элемент по <C-S-a>
                    ['<C-S-a>'] = function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        else
                            fallback()
                        end
                    end,
                },
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                }, {
                    { name = 'buffer' },
                })
            })

            -- Настройка для поиска по `/`
            cmp.setup.cmdline('/', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = 'buffer' }
                }
            })

            -- Настройка для командной строки `:`
            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = 'path' }
                }, {
                    { name = 'cmdline' }
                })
            })
        end,
    },
}


[{1 :nvim-treesitter/nvim-treesitter
  :event ["BufReadPre" "BufNewFile"]
  :build ":TSUpdate"
  :config (fn []
            (let [treesitter (require :nvim-treesitter.configs)]
              (treesitter.setup
                {:highlight {:enable true}
                 :indent {:enable true}
                 :ensure_installed [:bash
                                    :c
                                    :clojure
                                    :commonlisp
                                    :css
                                    :fennel
                                    :gitignore
                                    :html
                                    :java
                                    :javascript
                                    :json
                                    :lua
                                    :markdown
                                    :markdown_inline
                                    :rust
                                    :toml
                                    :typescript
                                    :tsx
                                    :vim
                                    :vimdoc
                                    :yaml
                                    :zig]
                 :incremental_selection {:enable true
                                         :keymaps {:init_selection :<C-space>
                                                   :node_incremental :<C-space>
                                                   :node_decremental :<bs>
                                                   :scope_incremental false}}})))}]

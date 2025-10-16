if status is-interactive
    # Commands to run in interactive sessions can go here
end

function conm
    if test "$CONDA_DEFAULT_ENV" = "miguel"
        echo "Deactivating Conda env: miguel"
        conda deactivate
    else
        echo "Activating Conda env: miguel"
        conda activate miguel
    end
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/miguel/.miniforge3/bin/conda
    eval /home/miguel/.miniforge3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/miguel/.miniforge3/etc/fish/conf.d/conda.fish"
        . "/home/miguel/.miniforge3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/miguel/.miniforge3/bin" $PATH
    end
end
# <<< conda initialize <<<


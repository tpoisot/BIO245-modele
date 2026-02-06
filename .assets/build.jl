using Literate

# Config for the execution of notebooks
cfg = Dict(
    "credit" => false,
    "execute" => true,
    "continue_on_error" => true,
)

Literate.markdown("travail.jl"; config=cfg, flavor=Literate.CommonMarkFlavor())

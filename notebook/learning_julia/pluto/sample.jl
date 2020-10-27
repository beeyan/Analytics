### A Pluto.jl notebook ###
# v0.12.4

using Markdown
using InteractiveUtils

# ╔═╡ 537b7f4a-16a5-11eb-2edb-a7f2debd64ca
using CSV,
	  HTTP,
      DataFrames

# ╔═╡ aa572d46-16a5-11eb-3968-1d1c29bd5075
function download(;url::String, method::String="GET")::DataFrames.DataFrame
	r = HTTP.request(method, url);
	count_data = CSV.read(IOBuffer(r.body), header=["messages"])
	return count_data
end

# ╔═╡ e2611710-16a5-11eb-3f15-2d5f7ba83eea
data = download(url="https://git.io/vXTVC", method="GET")

# ╔═╡ Cell order:
# ╠═537b7f4a-16a5-11eb-2edb-a7f2debd64ca
# ╠═aa572d46-16a5-11eb-3968-1d1c29bd5075
# ╠═e2611710-16a5-11eb-3f15-2d5f7ba83eea

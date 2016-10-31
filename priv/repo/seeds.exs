# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PhoenixLeaderboard.Repo.insert!(%PhoenixLeaderboard.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias PhoenixLeaderboard.Repo
alias PhoenixLeaderboard.Player

Repo.insert! %Player{ name: "Ada Lovelace", score: 5 }
Repo.insert! %Player{ name: "Grace Hopper", score: 10 }
Repo.insert! %Player{ name: "Marie Curie", score: 15 }
Repo.insert! %Player{ name: "Carl Friedrich Gauss", score: 20 }
Repo.insert! %Player{ name: "Nikola Tesla", score: 25 }
Repo.insert! %Player{ name: "Claude Shannon", score: 30 }
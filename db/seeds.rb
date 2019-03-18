# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Special.destroy_all
Comedian.destroy_all

demitri = Comedian.create(name: "Demitri Martin", age: 45, city: "New York City", thumbnail: "https://m.media-amazon.com/images/M/MV5BMjA3Nzg5MzM2Nl5BMl5BanBnXkFtZTcwODYzOTAzMg@@._V1_UY317_CR20,0,214,317_AL_.jpg")
steve = Comedian.create(name: "Steve Martin", age: 73, city: "Waco", thumbnail: "https://m.media-amazon.com/images/M/MV5BNDY0ODYwNDM3OV5BMl5BanBnXkFtZTcwMTc3NjQzMg@@._V1_UX214_CR0,0,214,317_AL_.jpg")
trevor = Comedian.create(name: "Trevor Noah", age: 35, city: "Johannesburg", thumbnail: "https://m.media-amazon.com/images/M/MV5BMjQ0MjEzNjczMF5BMl5BanBnXkFtZTgwNDEzNTY4NzE@._V1_UY317_CR12,0,214,317_AL_.jpg")
ellen = Comedian.create(name: "Ellen Degeneres", age: 60, city: "Metairie", thumbnail: "https://m.media-amazon.com/images/M/MV5BNDAwMzAyNDEzMV5BMl5BanBnXkFtZTcwMDU3MTAxMw@@._V1_UY317_CR12,0,214,317_AL_.jpg")
john = Comedian.create(name: "John Mulaney", age: 36, city: "Chicago", thumbnail: "https://m.media-amazon.com/images/M/MV5BMjA3Nzg5MzM2Nl5BMl5BanBnXkFtZTcwODYzOTAzMg@@._V1_UY317_CR20,0,214,317_AL_.jpg")
george = Comedian.create(name: "George Carlin", age: 71, city: "New York City", thumbnail: "https://m.media-amazon.com/images/M/MV5BMTI4ODgzNTk0NV5BMl5BanBnXkFtZTcwNjU1MjY3MQ@@._V1_UY317_CR11,0,214,317_AL_.jpg")
martin = Comedian.create(name: "Martin Short", age: 69, city: "Hamilton", thumbnail: "https://m.media-amazon.com/images/M/MV5BMTY1MDIyMDY1N15BMl5BanBnXkFtZTgwNzMzMDE5NTE@._V1_UX214_CR0,0,214,317_AL_.jpg")
chris = Comedian.create(name: "Chris Rock", age: 54, city: "Andrews", thumbnail: "https://m.media-amazon.com/images/M/MV5BMTEyNjM5MjgyNzdeQTJeQWpwZ15BbWU3MDAzMzUyODc@._V1.._UX214_CR0,0,214,317_AL_.jpg")
bill = Comedian.create(name: "Bill Burr", age: 51, city: "Canton", thumbnail: "https://m.media-amazon.com/images/M/MV5BMjA3Nzg5MzM2Nl5BMl5BanBnXkFtZTcwODYzOTAzMg@@._V1_UY317_CR20,0,214,317_AL_.jpg")
chrish = Comedian.create(name: "Chris Hardwick", age: 48, city: "Louisville", thumbnail: "https://m.media-amazon.com/images/M/MV5BMGRiN2Q4ZWQtMjdiZS00ZWY1LWEyNWMtMzliYjRkZWE3ODEzXkEyXkFqcGdeQXVyMTkxNjA2OTI@._V1_UX214_CR0,0,214,317_AL_.jpg")
jerry = Comedian.create(name: "Jerry Seinfeld", age: 65, city: "Brooklyn", thumbnail: "https://m.media-amazon.com/images/M/MV5BMTYxMDkwMjM5NV5BMl5BanBnXkFtZTcwMzUxMTgxNw@@._V1_UX214_CR0,0,214,317_AL_.jpg")
margaret = Comedian.create(name: "Margaret Cho", age: 65, city: "San Fransisco", thumbnail: "https://m.media-amazon.com/images/M/MV5BZTAxYmU1ODItYWViNC00YWJiLWJiYTEtNzExYTk3MmE4NDZkXkEyXkFqcGdeQXVyNTk0ODYyMTk@._V1_UX214_CR0,0,214,317_AL_.jpg")


Special.create(comedian: demitri, title: "Demitri. Person.", length: 42, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjE0MDgwNDE0MF5BMl5BanBnXkFtZTcwMDAzMDQ1MQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian: demitri, title: "Demitri Martin: Alive (At the Time)", length: 61, thumbnail: "https://m.media-amazon.com/images/M/MV5BNjQ4NTQ2NzE1N15BMl5BanBnXkFtZTgwODc4ODA3NjE@._V1_UX182_CR0,0,182,268_AL_.jpg")
Special.create(comedian: demitri, title: "Demitri Martin: The Overthinker", length: 56, thumbnail: "https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_UY268_CR4,0,182,268_AL_.jpg")

Special.create(comedian: steve, title: "Steve Martin and Martin Short: An Evening You Will Forget for the Rest of Your Life", length: 74, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTI5ZjQzNzktYTk2OS00ZWFiLWFlMjctNGZjMTU3NjAyMjEyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian: steve, title: "Steve Martin's Best Show Ever", length: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BOTIwMGZmOGYtYzM1My00YTE1LWI2NTgtY2YwOTYxNGM2YTZkXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_UY268_CR9,0,182,268_AL_.jpg")
Special.create(comedian: steve, title: "All Commercials... A Steve Martin Special", length: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BOTIwMGZmOGYtYzM1My00YTE1LWI2NTgtY2YwOTYxNGM2YTZkXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_UY268_CR9,0,182,268_AL_.jpg")

Special.create(comedian: trevor, title: "Trevor Noah: Son of Patricia", length: 63, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTU4MTA5NjMyNl5BMl5BanBnXkFtZTgwNDY0OTI4NjM@._V1_UX182_CR0,0,182,268_AL_.jpg")
Special.create(comedian: trevor, title: "Trevor Noah: Afraid of the Dark", length: 67, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTZhNjNjNGUtYTc2Ni00ZDc4LWJjNDMtYjVlOTI5OGI5YzE5XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian: trevor, title: "Trevor Noah: Pay Back the Funny", length: 84, thumbnail: "https://m.media-amazon.com/images/M/MV5BYmU1NWU3YmYtNjg1MS00YTU1LWE5OGYtZTY2NWNlNjA0YWYyXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR2,0,182,268_AL_.jpg")
Special.create(comedian: trevor, title: "Trevor Noah: Lost in Translation", length: 62, thumbnail: "https://m.media-amazon.com/images/M/MV5BMmNjYmY3N2QtOTUwNC00ZjI4LWI0MzUtZGRiOTg0M2U1MTYyXkEyXkFqcGdeQXVyMjQ4NDAyMDI@._V1_UY268_CR3,0,182,268_AL_.jpg")

Special.create(comedian: ellen, title: "Ellen DeGeneres: The Beginning", length: 66, thumbnail: "https://m.media-amazon.com/images/M/MV5BODQxNzQzMDc4Nl5BMl5BanBnXkFtZTgwMTgwNjgwMzE@._V1_UY268_CR9,0,182,268_AL_.jpg")
Special.create(comedian: ellen, title: "Ellen DeGeneres: Relatable", length: 68, thumbnail: "https://m.media-amazon.com/images/M/MV5BYTlmYzI2NTMtYmZmOS00ZTYzLTg2ZTUtZDhkZjhkZDVjMWQwXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_UX182_CR0,0,182,268_AL_.jpg")

Special.create(comedian: john, title: "John Mulaney: Kid Gorgeous at Radio City", length: 65, thumbnail: "https://m.media-amazon.com/images/M/MV5BOWZlYjE4ZDYtNjhlNi00ZGQ0LTgxZmUtNGRjNDM4YWJmOWNiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian: john, title: "John Mulaney: The Comeback Kid", length: 62, thumbnail: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian: john, title: "John Mulaney: New in Town", length: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjIzNzg5NTA2M15BMl5BanBnXkFtZTgwOTY4NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg")

Special.create(comedian: george, title: "George Carlin... It's Bad for Ya!", length: 70, thumbnail: "https://m.media-amazon.com/images/M/MV5BMzI0Njk5ZWYtNGVhNy00MjVmLWFhMWItN2NhNGQ5NDQ3YmE3XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg")
Special.create(comedian: george, title: "George Carlin: Life Is Worth Losing", length: 75, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTI2ODk4OTg1NF5BMl5BanBnXkFtZTcwNjM5MzU0MQ@@._V1_UY268_CR2,0,182,268_AL_.jpg")
Special.create(comedian: george, title: "George Carlin: Complaints & Grievances", length: 55, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTIyNTg1MjU0Nl5BMl5BanBnXkFtZTcwNzY2ODYyMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian: george, title: "George Carlin: You Are All Diseased", length: 65, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTIxMjA3OTYwNF5BMl5BanBnXkFtZTcwMTU5OTcxMQ@@._V1_UY268_CR6,0,182,268_AL_.jpg")

Special.create(comedian: martin, title: "Steve Martin and Martin Short: An Evening You Will Forget for the Rest of Your Life", length: 74, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTI5ZjQzNzktYTk2OS00ZWFiLWFlMjctNGZjMTU3NjAyMjEyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian: martin, title: "The Show Formerly Known as the Martin Short Show", length: 90, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTI5ZjQzNzktYTk2OS00ZWFiLWFlMjctNGZjMTU3NjAyMjEyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian: martin, title: "Martin Short: Concert for the North Americas", length: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BYmI2NGRhMjMtMzdkYi00YjFiLTk5NzMtN2JmYWQ5MGFiYWNjXkEyXkFqcGdeQXVyMzU0NzkwMDg@._V1_UY268_CR4,0,182,268_AL_.jpg")

Special.create(comedian: chris, title: "Chris Rock: Tamborine", length: 64, thumbnail: "https://m.media-amazon.com/images/M/MV5BMGQ5NWJmMDktMDMxNS00ZWQzLWEzNjgtZWU5NjE0ZmZjYjc0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian: chris, title: "Chris Rock: Kill the Messenger", length: 79, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjAwMjQxNDA5OF5BMl5BanBnXkFtZTcwNTE3MzM5MQ@@._V1_UY268_CR11,0,182,268_AL_.jpg")
Special.create(comedian: chris, title: "Chris Rock: Bring the Pain", length: 80, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTU0ODk2MzYyM15BMl5BanBnXkFtZTcwMTUxMzYxMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian: chris, title: "Chris Rock: Bigger & Blacker", length: 65, thumbnail: "https://m.media-amazon.com/images/M/MV5BODQzOWExYjktZDQ2OC00YTA5LWI3YzctMDFjNjc3ZTM5NTA0XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg")

Special.create(comedian: bill, title: "Bill Burr: Walk Your Way Out", length: 77, thumbnail: "https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_UY268_CR10,0,182,268_AL_.jpg")
Special.create(comedian: bill, title: "Bill Burr: I'm Sorry You Feel That Way", length: 80, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_UX182_CR0,0,182,268_AL_.jpg")
Special.create(comedian: bill, title: "Bill Burr: You People Are All the Same.", length: 69, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjAyZTI1NjMtNjQ3OC00MDhhLTkxMDgtMDVmMThhNjE5M2NkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian: bill, title: "Bill Burr: Let It Go", length: 65, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjA0ODUxODkwOV5BMl5BanBnXkFtZTgwNTMwNTA2MDE@._V1_UY268_CR4,0,182,268_AL_.jpg")

Special.create(comedian: chrish, title: "Chris Hardwick: Funcomfortable", length: 74, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTc3MjU0NTI0N15BMl5BanBnXkFtZTgwNzY3MTg4ODE@._V1_UY268_CR9,0,182,268_AL_.jpg")
Special.create(comedian: chrish, title: "Chris Hardwick: Mandroid", length: 60, thumbnail: "https://m.media-amazon.com/images/M/MV5BMjIxNDU5Mzc0M15BMl5BanBnXkFtZTgwOTc1NzA2MDE@._V1_UY268_CR1,0,182,268_AL_.jpg")

Special.create(comedian: jerry, title: "Jerry Seinfeld: 'I'm Telling You for the Last Time'", length: 75, thumbnail: "https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_UY268_CR0,0,182,268_AL_.jpg")
Special.create(comedian: jerry, title: "Jerry Seinfeld: Stand-Up Confidential", length: 55, thumbnail: "https://m.media-amazon.com/images/M/MV5BYjZlNTgxMzYtZjc1ZS00OTQzLThiYWYtMTEzYjNmNDM1NmFkXkEyXkFqcGdeQXVyMzU0NzkwMDg@._V1_UX182_CR0,0,182,268_AL_.jpg")

Special.create(comedian: margaret, title: "Margaret Cho: PsyCHO", length: 81, thumbnail: "https://m.media-amazon.com/images/M/MV5BNDEyNDU3NjcyNF5BMl5BanBnXkFtZTgwODcxMzg0ODE@._V1_UY268_CR9,0,182,268_AL_.jpg")
Special.create(comedian: margaret, title: "Margaret Cho: Cho Dependent", length: 86, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTU2MTk3ODAzMV5BMl5BanBnXkFtZTgwNTkzNzAxMzE@._V1_UY268_CR9,0,182,268_AL_.jpg")
Special.create(comedian: margaret, title: "Margaret Cho: Beautiful", length: 86, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTM2ODk3MjU0Ml5BMl5BanBnXkFtZTcwNDM4ODAwMw@@._V1_UY268_CR4,0,182,268_AL_.jpg")
Special.create(comedian: margaret, title: "Margaret Cho: Assassin", length: 90, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTk4NjY5ODkxNl5BMl5BanBnXkFtZTcwNTM5MzEzMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")

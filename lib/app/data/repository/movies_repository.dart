import 'dart:convert';

import 'package:challenge_movies/app/data/models/query_paginated.dart';
import 'package:challenge_movies/app/data/provider/movies_provider.dart';
import 'package:challenge_movies/app/utilities/error_response.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

import '../models/movie.dart';
import 'i_movies_repository.dart';

class MoviesRepository implements IMoviesRepository {
  final provider = Get.put(MoviesProvider());
  Future<Either<ErrorResponse, QueryPaginated<Movie>>> getMovies() async {
    Map<String, dynamic> mock = {
      "page": 1,
      "results": [
        {
          "adult": false,
          "backdrop_path": "/wcKFYIiVDvRURrzglV9kGu7fpfY.jpg",
          "genre_ids": [
            14,
            28,
            12
          ],
          "id": 453395,
          "original_language": "en",
          "original_title": "Doctor Strange in the Multiverse of Madness",
          "overview": "Doctor Strange, with the help of mystical allies both old and new, traverses the mind-bending and dangerous alternate realities of the Multiverse to confront a mysterious new adversary.",
          "popularity": 9411.64,
          "poster_path": "/9Gtg2DzBhmYamXBS1hKAhiwbBKS.jpg",
          "release_date": "2022-05-04",
          "title": "Doctor Strange in the Multiverse of Madness",
          "video": false,
          "vote_average": 7.5,
          "vote_count": 3956
        },
        {
          "adult": false,
          "backdrop_path": "/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg",
          "genre_ids": [
            10751,
            16,
            12,
            35
          ],
          "id": 438148,
          "original_language": "en",
          "original_title": "Minions: The Rise of Gru",
          "overview": "A fanboy of a supervillain supergroup known as the Vicious 6, Gru hatches a plan to become evil enough to join them, with the backup of his followers, the Minions.",
          "popularity": 4455.931,
          "poster_path": "/wKiOkZTN9lUUUNZLmtnwubZYONg.jpg",
          "release_date": "2022-06-29",
          "title": "Minions: The Rise of Gru",
          "video": false,
          "vote_average": 8,
          "vote_count": 89
        },
        {
          "adult": false,
          "backdrop_path": "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg",
          "genre_ids": [
            53
          ],
          "id": 924482,
          "original_language": "en",
          "original_title": "The Ledge",
          "overview": "A rock climbing adventure between two friends turns into a terrifying nightmare. After Kelly captures the murder of her best friend on camera, she becomes the next target of a tight-knit group of friends who will stop at nothing to destroy the evidence and anyone in their way. Desperate for her safety, she begins a treacherous climb up a mountain cliff and her survival instincts are put to the test when she becomes trapped with the killers just 20 feet away.",
          "popularity": 3054.675,
          "poster_path": "/AjhOjyZYWlOIUu30qifMxRpPAVi.jpg",
          "release_date": "2022-02-18",
          "title": "The Ledge",
          "video": false,
          "vote_average": 6.3,
          "vote_count": 30
        },
        {
          "adult": false,
          "backdrop_path": "/zGLHX92Gk96O1DJvLil7ObJTbaL.jpg",
          "genre_ids": [
            14,
            12,
            28
          ],
          "id": 338953,
          "original_language": "en",
          "original_title": "Fantastic Beasts: The Secrets of Dumbledore",
          "overview": "Professor Albus Dumbledore knows the powerful, dark wizard Gellert Grindelwald is moving to seize control of the wizarding world. Unable to stop him alone, he entrusts magizoologist Newt Scamander to lead an intrepid team of wizards and witches. They soon encounter an array of old and new beasts as they clash with Grindelwald's growing legion of followers.",
          "popularity": 3010.237,
          "poster_path": "/jrgifaYeUtTnaH7NF5Drkgjg2MB.jpg",
          "release_date": "2022-04-06",
          "title": "Fantastic Beasts: The Secrets of Dumbledore",
          "video": false,
          "vote_average": 6.8,
          "vote_count": 2133
        },
        {
          "adult": false,
          "backdrop_path": "/egoyMDLqCxzjnSrWOz50uLlJWmD.jpg",
          "genre_ids": [
            28,
            12,
            10751,
            35
          ],
          "id": 675353,
          "original_language": "en",
          "original_title": "Sonic the Hedgehog 2",
          "overview": "After settling in Green Hills, Sonic is eager to prove he has what it takes to be a true hero. His test comes when Dr. Robotnik returns, this time with a new partner, Knuckles, in search for an emerald that has the power to destroy civilizations. Sonic teams up with his own sidekick, Tails, and together they embark on a globe-trotting journey to find the emerald before it falls into the wrong hands.",
          "popularity": 2682.048,
          "poster_path": "/6DrHO1jr3qVrViUO6s6kFiAGM7.jpg",
          "release_date": "2022-03-30",
          "title": "Sonic the Hedgehog 2",
          "video": false,
          "vote_average": 7.7,
          "vote_count": 2364
        },
        {
          "adult": false,
          "backdrop_path": "/t0mwKhUDa62hdhdKSsN4xMfhY5Z.jpg",
          "genre_ids": [
            18,
            35
          ],
          "id": 626735,
          "original_language": "en",
          "original_title": "Dog",
          "overview": "An army ranger and his dog embark on a road trip along the Pacific Coast Highway to attend a friend's funeral.",
          "popularity": 2522.163,
          "poster_path": "/rkpLvPDe0ZE62buUS32exdNr7zD.jpg",
          "release_date": "2022-02-17",
          "title": "Dog",
          "video": false,
          "vote_average": 7.5,
          "vote_count": 543
        },
        {
          "adult": false,
          "backdrop_path": "/uzZAef6uVqvhY4nLWqVvaq3DQeJ.jpg",
          "genre_ids": [
            53,
            80,
            18
          ],
          "id": 975714,
          "original_language": "en",
          "original_title": "Collision",
          "overview": "Over the course of one fateful day, a corrupt businessman and his socialite wife race to save their daughter from a notorious crime lord.",
          "popularity": 2346.919,
          "poster_path": "/4zsihgkxMZ7MrflNCjkD3ySFJtc.jpg",
          "release_date": "2022-06-16",
          "title": "Collision",
          "video": false,
          "vote_average": 6,
          "vote_count": 58
        },
        {
          "adult": false,
          "backdrop_path": "/QOMBHUrMCTw6nugUsGQdLKYxr8.jpg",
          "genre_ids": [
            28,
            12,
            878
          ],
          "id": 507086,
          "original_language": "en",
          "original_title": "Jurassic World Dominion",
          "overview": "Four years after Isla Nublar was destroyed, dinosaurs now live—and hunt—alongside humans all over the world. This fragile balance will reshape the future and determine, once and for all, whether human beings are to remain the apex predators on a planet they now share with history’s most fearsome creatures.",
          "popularity": 2298.022,
          "poster_path": "/kAVRgw7GgK1CfYEJq8ME6EvRIgU.jpg",
          "release_date": "2022-06-01",
          "title": "Jurassic World Dominion",
          "video": false,
          "vote_average": 6.6,
          "vote_count": 928
        },
        {
          "adult": false,
          "backdrop_path": "/gG9fTyDL03fiKnOpf2tr01sncnt.jpg",
          "genre_ids": [
            28,
            878,
            14
          ],
          "id": 526896,
          "original_language": "en",
          "original_title": "Morbius",
          "overview": "Dangerously ill with a rare blood disorder, and determined to save others suffering his same fate, Dr. Michael Morbius attempts a desperate gamble. What at first appears to be a radical success soon reveals itself to be a remedy potentially worse than the disease.",
          "popularity": 2280.99,
          "poster_path": "/6JjfSchsU6daXk2AKX8EEBjO3Fm.jpg",
          "release_date": "2022-03-30",
          "title": "Morbius",
          "video": false,
          "vote_average": 6.5,
          "vote_count": 1949
        },
        {
          "adult": false,
          "backdrop_path": "/1Ds7xy7ILo8u2WWxdnkJth1jQVT.jpg",
          "genre_ids": [
            28,
            12,
            35
          ],
          "id": 752623,
          "original_language": "en",
          "original_title": "The Lost City",
          "overview": "A reclusive romance novelist was sure nothing could be worse than getting stuck on a book tour with her cover model until a kidnapping attempt sweeps them both into a cutthroat jungle adventure, proving life can be so much stranger, and more romantic, than any of her paperback fictions.",
          "popularity": 2237.554,
          "poster_path": "/neMZH82Stu91d3iqvLdNQfqPPyl.jpg",
          "release_date": "2022-03-24",
          "title": "The Lost City",
          "video": false,
          "vote_average": 6.8,
          "vote_count": 1414
        },
        {
          "adult": false,
          "backdrop_path": "/iOFBH9KtjKMntbP2kheeOpMQTcC.jpg",
          "genre_ids": [
            28,
            35,
            53
          ],
          "id": 667739,
          "original_language": "en",
          "original_title": "The Man From Toronto",
          "overview": "In a case of mistaken identity, the world’s deadliest assassin, known as the Man from Toronto, and a New York City screw-up are forced to team up after being confused for each other at an Airbnb.",
          "popularity": 2217.298,
          "poster_path": "/uTCfTibqtk4f90cC59bLPMOmsfc.jpg",
          "release_date": "2022-06-24",
          "title": "The Man From Toronto",
          "video": false,
          "vote_average": 6.1,
          "vote_count": 229
        },
        {
          "adult": false,
          "backdrop_path": "/ocUp7DJBIc8VJgLEw1prcyK1dYv.jpg",
          "genre_ids": [
            28,
            12,
            878
          ],
          "id": 634649,
          "original_language": "en",
          "original_title": "Spider-Man: No Way Home",
          "overview": "Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.",
          "popularity": 2116.822,
          "poster_path": "/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
          "release_date": "2021-12-15",
          "title": "Spider-Man: No Way Home",
          "video": false,
          "vote_average": 8.1,
          "vote_count": 13922
        },
        {
          "adult": false,
          "backdrop_path": "/vjnLXptqdxnpNJer5fWgj2OIGhL.jpg",
          "genre_ids": [
            28,
            53,
            80
          ],
          "id": 818397,
          "original_language": "en",
          "original_title": "Memory",
          "overview": "Alex, an assassin-for-hire, finds that he's become a target after he refuses to complete a job for a dangerous criminal organization. With the crime syndicate and FBI in hot pursuit, Alex has the skills to stay ahead, except for one thing: he is struggling with severe memory loss, affecting his every move. Alex must question his every action and whom he can ultimately trust.",
          "popularity": 2083.102,
          "poster_path": "/4Q1n3TwieoULnuaztu9aFjqHDTI.jpg",
          "release_date": "2022-04-28",
          "title": "Memory",
          "video": false,
          "vote_average": 7.3,
          "vote_count": 453
        },
        {
          "adult": false,
          "backdrop_path": "/ulkWS7Atv0vv33KVCSAmNizAmJd.jpg",
          "genre_ids": [
            878,
            53
          ],
          "id": 615469,
          "original_language": "en",
          "original_title": "Spiderhead",
          "overview": "A prisoner in a state-of-the-art penitentiary begins to question the purpose of the emotion-controlling drugs he's testing for a pharmaceutical genius.",
          "popularity": 1775.501,
          "poster_path": "/7COPO5B9AOKIB4sEkvNu0wfve3c.jpg",
          "release_date": "2022-06-15",
          "title": "Spiderhead",
          "video": false,
          "vote_average": 5.7,
          "vote_count": 518
        },
        {
          "adult": false,
          "backdrop_path": "/v7hdWmLh6VLgZQgkbHDxAa17M47.jpg",
          "genre_ids": [
            28,
            80,
            53
          ],
          "id": 852592,
          "original_language": "es",
          "original_title": "Centauro",
          "overview": "Rafa's hooked on the pure, fiery feelings he gets from speed racing, but when his kid's mom gets mixed up with drug dealers, he burns rubber to save her.",
          "popularity": 1767.162,
          "poster_path": "/wOx97MJOxEoR38aoya3lopyrlYC.jpg",
          "release_date": "2022-06-15",
          "title": "Centauro",
          "video": false,
          "vote_average": 6.5,
          "vote_count": 51
        },
        {
          "adult": false,
          "backdrop_path": "/GLLgrghu7wSPaSjl2Rw4kjASOJ.jpg",
          "genre_ids": [
            27,
            53
          ],
          "id": 756999,
          "original_language": "en",
          "original_title": "The Black Phone",
          "overview": "Finney Shaw, a shy but clever 13-year-old boy, is abducted by a sadistic killer and trapped in a soundproof basement where screaming is of little use. When a disconnected phone on the wall begins to ring, Finney discovers that he can hear the voices of the killer’s previous victims. And they are dead set on making sure that what happened to them doesn’t happen to Finney.",
          "popularity": 1642.577,
          "poster_path": "/bxHZpV02OOu9vq3sb3MsOudEnYc.jpg",
          "release_date": "2022-06-22",
          "title": "The Black Phone",
          "video": false,
          "vote_average": 7.1,
          "vote_count": 204
        },
        {
          "adult": false,
          "backdrop_path": "/jVGHRpSgtE2MQLJhC5q4lXmPNQW.jpg",
          "genre_ids": [
            27,
            53,
            28
          ],
          "id": 960258,
          "original_language": "en",
          "original_title": "Shark Bait",
          "overview": "A group of friends enjoying a weekend steal a couple of jetskis racing them out to sea, ending up in a horrific head-on collision. They struggle to find a way home with a badly injured friend while from the waters below predators lurk.",
          "popularity": 1636.371,
          "poster_path": "/mVVU9zC8snNHlcqYONY2HOsh9ob.jpg",
          "release_date": "2022-05-13",
          "title": "Shark Bait",
          "video": false,
          "vote_average": 6.9,
          "vote_count": 66
        },
        {
          "adult": false,
          "backdrop_path": "/cqnVuxXe6vA7wfNWubak3x36DKJ.jpg",
          "genre_ids": [
            28,
            12,
            14
          ],
          "id": 639933,
          "original_language": "en",
          "original_title": "The Northman",
          "overview": "Prince Amleth is on the verge of becoming a man when his father is brutally murdered by his uncle, who kidnaps the boy's mother. Two decades later, Amleth is now a Viking who's on a mission to save his mother, kill his uncle and avenge his father.",
          "popularity": 1631.837,
          "poster_path": "/zhLKlUaF1SEpO58ppHIAyENkwgw.jpg",
          "release_date": "2022-04-07",
          "title": "The Northman",
          "video": false,
          "vote_average": 7.2,
          "vote_count": 1747
        },
        {
          "adult": false,
          "backdrop_path": "/qp8qKiP7Q7zK4z3LItwWMHfV9kJ.jpg",
          "genre_ids": [
            53
          ],
          "id": 764835,
          "original_language": "en",
          "original_title": "The Desperate Hour",
          "overview": "A woman desperately races to save her child after police place her hometown on lockdown due to an active shooter incident.",
          "popularity": 1610.642,
          "poster_path": "/u6Pg9eTklhg6Aa7kXaxrfdE1Chi.jpg",
          "release_date": "2021-09-12",
          "title": "The Desperate Hour",
          "video": false,
          "vote_average": 6.1,
          "vote_count": 158
        },
        {
          "adult": false,
          "backdrop_path": "/fOy2Jurz9k6RnJnMUMRDAgBwru2.jpg",
          "genre_ids": [
            16,
            10751,
            35,
            14
          ],
          "id": 508947,
          "original_language": "en",
          "original_title": "Turning Red",
          "overview": "Thirteen-year-old Mei is experiencing the awkwardness of being a teenager with a twist – when she gets too excited, she transforms into a giant red panda.",
          "popularity": 1553.354,
          "poster_path": "/qsdjk9oAKSQMWs0Vt5Pyfh6O4GZ.jpg",
          "release_date": "2022-03-10",
          "title": "Turning Red",
          "video": false,
          "vote_average": 7.5,
          "vote_count": 2635
        }
      ],
      "total_pages": 34211,
      "total_results": 684204
    };

    try{
      final resp = await provider.getMovies();
      Map<String, dynamic> data = resp.body;
      print('TRY1 $resp');
      print('TRY2 $data');
      // print(data);
      // print(body);

      if (data['success'] != false) {
        return right(
          QueryPaginated<Movie>.fromJson(mock)
            ..results = (mock['results'] as List)
                .map(
                  (e) => Movie.fromJson(e),
            )
                .toList(),
        );
      } else {
        print('ERROR ELSE ${resp.status.code}');
        return left(
          ErrorResponse(
            error: data['status_message'],
            statusCode: resp.statusCode,
          ),
        );
      }

    }catch(e){
      print('CATCH $e');
      return left(ErrorResponse(error: e.toString()));
    }
  }
}
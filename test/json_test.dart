import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('task_json', () {
    dynamic json =
        """{action: {actionable: true, itemcount: 1, name: 問題を受験する, showitemcount: false, url: https://hope.fun.ac.jp/mod/quiz/view.php?id=53774}, candelete: false, canedit: false, categoryid: null, component: mod_quiz, course: {coursecategory: 高度ICTリエゾンラボラトリー, courseimage: data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIj8+PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMzYiIGhlaWdodD0iMjM1Ij48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDAlIiBmaWxsPSJyZ2IoMTc4LCAxOTAsIDE5NSkiIC8+PHBvbHlsaW5lIHBvaW50cz0iMjIuNjY2NjY2NjY2NjY3LCAwLCA0NS4zMzMzMzMzMzMzMzMsIDM5LjI1OTgxODMwNDg5NSwgMCwgMzkuMjU5ODE4MzA0ODk1LCAyMi42NjY2NjY2NjY2NjcsIDAiIGZpbGw9IiMyMjIiIGZpbGwtb3BhY2l0eT0iMC4wODA2NjY2NjY2NjY2NjciIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLW9wYWNpdHk9IjAuMDIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMi42NjY2NjY2NjY2NjcsIDApIHJvdGF0ZSgxODAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48cG9seWxpbmUgcG9pbnRzPSIyMi42NjY2NjY2NjY2NjcsIDAsIDQ1LjMzMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1LCAwLCAzOS4yNTk4MTgzMDQ4OTUsIDIyLjY2NjY2NjY2NjY2NywgMCIgZmlsbD0iIzIyMiIgZmlsbC1vcGFjaXR5PSIwLjA4MDY2NjY2NjY2NjY2NyIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utb3BhY2l0eT0iMC4wMiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEzLjMzMzMzMzMzMzMzLCAwKSByb3RhdGUoMTgwLCAyMi42NjY2NjY2NjY2NjcsIDE5LjYyOTkwOTE1MjQ0NykiIC8+PHBvbHlsaW5lIHBvaW50cz0iMjIuNjY2NjY2NjY2NjY3LCAwLCA0NS4zMzMzMzMzMzMzMzMsIDM5LjI1OTgxODMwNDg5NSwgMCwgMzkuMjU5ODE4MzA0ODk1LCAyMi42NjY2NjY2NjY2NjcsIDAiIGZpbGw9IiNkZGQiIGZpbGwtb3BhY2l0eT0iMC4wMzczMzMzMzMzMzMzMzMiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLW9wYWNpdHk9IjAuMDIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAsIDApIHJvdGF0ZSgwLCAyMi42NjY2NjY2NjY2NjcsIDE5LjYyOTkwOTE1MjQ0NykiIC8+PHBvbHlsaW5lIHBvaW50cz0iMjIuNjY2NjY2NjY2NjY3LCAwLCA0NS4zMzMzMzMzMzMzMzMsIDM5LjI1OTgxODMwNDg5NSwgMCwgMzkuMjU5ODE4MzA0ODk1LCAyMi42NjY2NjY2NjY2NjcsIDAiIGZpbGw9IiNkZGQiIGZpbGwtb3BhY2l0eT0iMC4wMzczMzMzMzMzMzMzMzMiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLW9wYWNpdHk9IjAuMDIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDIyLjY2NjY2NjY2NjY2NywgMCkgcm90YXRlKDE4MCwgMjIuNjY2NjY2NjY2NjY3LCAxOS42Mjk5MDkxNTI0NDcpIiAvPjxwb2x5bGluZSBwb2ludHM9IjIyLjY2NjY2NjY2NjY2NywgMCwgNDUuMzMzMzMzMzMzMzMzLCAzOS4yNTk4MTgzMDQ4OTUsIDAsIDM5LjI1OTgxODMwNDg5NSwgMjIuNjY2NjY2NjY2NjY3LCAwIiBmaWxsPSIjZGRkIiBmaWxsLW9wYWNpdHk9IjAuMDU0NjY2NjY2NjY2NjY3IiBzdHJva2U9IiMwMDAiIHN0cm9rZS1vcGFjaXR5PSIwLjAyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSg0NS4zMzMzMzMzMzMzMzMsIDApIHJvdGF0ZSgwLCAyMi42NjY2NjY2NjY2NjcsIDE5LjYyOTkwOTE1MjQ0NykiIC8+PHBvbHlsaW5lIHBvaW50cz0iMjIuNjY2NjY2NjY2NjY3LCAwLCA0NS4zMzMzMzMzMzMzMzMsIDM5LjI1OTgxODMwNDg5NSwgMCwgMzkuMjU5ODE4MzA0ODk1LCAyMi42NjY2NjY2NjY2NjcsIDAiIGZpbGw9IiMyMjIiIGZpbGwtb3BhY2l0eT0iMC4xNSIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utb3BhY2l0eT0iMC4wMiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNjgsIDApIHJvdGF0ZSgxODAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48cG9seWxpbmUgcG9pbnRzPSIyMi42NjY2NjY2NjY2NjcsIDAsIDQ1LjMzMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1LCAwLCAzOS4yNTk4MTgzMDQ4OTUsIDIyLjY2NjY2NjY2NjY2NywgMCIgZmlsbD0iIzIyMiIgZmlsbC1vcGFjaXR5PSIwLjA5OCIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utb3BhY2l0eT0iMC4wMiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoOTAuNjY2NjY2NjY2NjY3LCAwKSByb3RhdGUoMCwgMjIuNjY2NjY2NjY2NjY3LCAxOS42Mjk5MDkxNTI0NDcpIiAvPjxwb2x5bGluZSBwb2ludHM9IjIyLjY2NjY2NjY2NjY2NywgMCwgNDUuMzMzMzMzMzMzMzMzLCAzOS4yNTk4MTgzMDQ4OTUsIDAsIDM5LjI1OTgxODMwNDg5NSwgMjIuNjY2NjY2NjY2NjY3LCAwIiBmaWxsPSIjMjIyIiBmaWxsLW9wYWNpdHk9IjAuMDk4IiBzdHJva2U9IiMwMDAiIHN0cm9rZS1vcGFjaXR5PSIwLjAyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMjIuNjY2NjY2NjY2NjY3LCAzOS4yNTk4MTgzMDQ4OTUpIHJvdGF0ZSgwLCAyMi42NjY2NjY2NjY2NjcsIDE5LjYyOTkwOTE1MjQ0NykiIC8+PHBvbHlsaW5lIHBvaW50cz0iMjIuNjY2NjY2NjY2NjY3LCAwLCA0NS4zMzMzMzMzMzMzMzMsIDM5LjI1OTgxODMwNDg5NSwgMCwgMzkuMjU5ODE4MzA0ODk1LCAyMi42NjY2NjY2NjY2NjcsIDAiIGZpbGw9IiMyMjIiIGZpbGwtb3BhY2l0eT0iMC4wOTgiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLW9wYWNpdHk9IjAuMDIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDExMy4zMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1KSByb3RhdGUoMCwgMjIuNjY2NjY2NjY2NjY3LCAxOS42Mjk5MDkxNTI0NDcpIiAvPjxwb2x5bGluZSBwb2ludHM9IjIyLjY2NjY2NjY2NjY2NywgMCwgNDUuMzMzMzMzMzMzMzMzLCAzOS4yNTk4MTgzMDQ4OTUsIDAsIDM5LjI1OTgxODMwNDg5NSwgMjIuNjY2NjY2NjY2NjY3LCAwIiBmaWxsPSIjMjIyIiBmaWxsLW9wYWNpdHk9IjAuMDgwNjY2NjY2NjY2NjY3IiBzdHJva2U9IiMwMDAiIHN0cm9rZS1vcGFjaXR5PSIwLjAyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwLCAzOS4yNTk4MTgzMDQ4OTUpIHJvdGF0ZSgxODAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48cG9seWxpbmUgcG9pbnRzPSIyMi42NjY2NjY2NjY2NjcsIDAsIDQ1LjMzMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1LCAwLCAzOS4yNTk4MTgzMDQ4OTUsIDIyLjY2NjY2NjY2NjY2NywgMCIgZmlsbD0iIzIyMiIgZmlsbC1vcGFjaXR5PSIwLjE1IiBzdHJva2U9IiMwMDAiIHN0cm9rZS1vcGFjaXR5PSIwLjAyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyMi42NjY2NjY2NjY2NjcsIDM5LjI1OTgxODMwNDg5NSkgcm90YXRlKDAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48cG9seWxpbmUgcG9pbnRzPSIyMi42NjY2NjY2NjY2NjcsIDAsIDQ1LjMzMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1LCAwLCAzOS4yNTk4MTgzMDQ4OTUsIDIyLjY2NjY2NjY2NjY2NywgMCIgZmlsbD0iI2RkZCIgZmlsbC1vcGFjaXR5PSIwLjEyNCIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utb3BhY2l0eT0iMC4wMiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNDUuMzMzMzMzMzMzMzMzLCAzOS4yNTk4MTgzMDQ4OTUpIHJvdGF0ZSgxODAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48cG9seWxpbmUgcG9pbnRzPSIyMi42NjY2NjY2NjY2NjcsIDAsIDQ1LjMzMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1LCAwLCAzOS4yNTk4MTgzMDQ4OTUsIDIyLjY2NjY2NjY2NjY2NywgMCIgZmlsbD0iIzIyMiIgZmlsbC1vcGFjaXR5PSIwLjAyODY2NjY2NjY2NjY2NyIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utb3BhY2l0eT0iMC4wMiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNjgsIDM5LjI1OTgxODMwNDg5NSkgcm90YXRlKDAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48cG9seWxpbmUgcG9pbnRzPSIyMi42NjY2NjY2NjY2NjcsIDAsIDQ1LjMzMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1LCAwLCAzOS4yNTk4MTgzMDQ4OTUsIDIyLjY2NjY2NjY2NjY2NywgMCIgZmlsbD0iI2RkZCIgZmlsbC1vcGFjaXR5PSIwLjA1NDY2NjY2NjY2NjY2NyIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utb3BhY2l0eT0iMC4wMiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoOTAuNjY2NjY2NjY2NjY3LCAzOS4yNTk4MTgzMDQ4OTUpIHJvdGF0ZSgxODAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48cG9seWxpbmUgcG9pbnRzPSIyMi42NjY2NjY2NjY2NjcsIDAsIDQ1LjMzMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1LCAwLCAzOS4yNTk4MTgzMDQ4OTUsIDIyLjY2NjY2NjY2NjY2NywgMCIgZmlsbD0iI2RkZCIgZmlsbC1vcGFjaXR5PSIwLjA4OTMzMzMzMzMzMzMzMyIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utb3BhY2l0eT0iMC4wMiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTIyLjY2NjY2NjY2NjY2NywgNzguNTE5NjM2NjA5Nzg5KSByb3RhdGUoMTgwLCAyMi42NjY2NjY2NjY2NjcsIDE5LjYyOTkwOTE1MjQ0NykiIC8+PHBvbHlsaW5lIHBvaW50cz0iMjIuNjY2NjY2NjY2NjY3LCAwLCA0NS4zMzMzMzMzMzMzMzMsIDM5LjI1OTgxODMwNDg5NSwgMCwgMzkuMjU5ODE4MzA0ODk1LCAyMi42NjY2NjY2NjY2NjcsIDAiIGZpbGw9IiNkZGQiIGZpbGwtb3BhY2l0eT0iMC4wODkzMzMzMzMzMzMzMzMiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLW9wYWNpdHk9IjAuMDIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDExMy4zMzMzMzMzMzMzMywgNzguNTE5NjM2NjA5Nzg5KSByb3RhdGUoMTgwLCAyMi42NjY2NjY2NjY2NjcsIDE5LjYyOTkwOTE1MjQ0NykiIC8+PHBvbHlsaW5lIHBvaW50cz0iMjIuNjY2NjY2NjY2NjY3LCAwLCA0NS4zMzMzMzMzMzMzMzMsIDM5LjI1OTgxODMwNDg5NSwgMCwgMzkuMjU5ODE4MzA0ODk1LCAyMi42NjY2NjY2NjY2NjcsIDAiIGZpbGw9IiMyMjIiIGZpbGwtb3BhY2l0eT0iMC4xMTUzMzMzMzMzMzMzMyIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utb3BhY2l0eT0iMC4wMiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCwgNzguNTE5NjM2NjA5Nzg5KSByb3RhdGUoMCwgMjIuNjY2NjY2NjY2NjY3LCAxOS42Mjk5MDkxNTI0NDcpIiAvPjxwb2x5bGluZSBwb2ludHM9IjIyLjY2NjY2NjY2NjY2NywgMCwgNDUuMzMzMzMzMzMzMzMzLCAzOS4yNTk4MTgzMDQ4OTUsIDAsIDM5LjI1OTgxODMwNDg5NSwgMjIuNjY2NjY2NjY2NjY3LCAwIiBmaWxsPSIjZGRkIiBmaWxsLW9wYWNpdHk9IjAuMTA2NjY2NjY2NjY2NjciIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLW9wYWNpdHk9IjAuMDIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDIyLjY2NjY2NjY2NjY2NywgNzguNTE5NjM2NjA5Nzg5KSByb3RhdGUoMTgwLCAyMi42NjY2NjY2NjY2NjcsIDE5LjYyOTkwOTE1MjQ0NykiIC8+PHBvbHlsaW5lIHBvaW50cz0iMjIuNjY2NjY2NjY2NjY3LCAwLCA0NS4zMzMzMzMzMzMzMzMsIDM5LjI1OTgxODMwNDg5NSwgMCwgMzkuMjU5ODE4MzA0ODk1LCAyMi42NjY2NjY2NjY2NjcsIDAiIGZpbGw9IiNkZGQiIGZpbGwtb3BhY2l0eT0iMC4xMDY2NjY2NjY2NjY2NyIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utb3BhY2l0eT0iMC4wMiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNDUuMzMzMzMzMzMzMzMzLCA3OC41MTk2MzY2MDk3ODkpIHJvdGF0ZSgwLCAyMi42NjY2NjY2NjY2NjcsIDE5LjYyOTkwOTE1MjQ0NykiIC8+PHBvbHlsaW5lIHBvaW50cz0iMjIuNjY2NjY2NjY2NjY3LCAwLCA0NS4zMzMzMzMzMzMzMzMsIDM5LjI1OTgxODMwNDg5NSwgMCwgMzkuMjU5ODE4MzA0ODk1LCAyMi42NjY2NjY2NjY2NjcsIDAiIGZpbGw9IiNkZGQiIGZpbGwtb3BhY2l0eT0iMC4wMiIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utb3BhY2l0eT0iMC4wMiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNjgsIDc4LjUxOTYzNjYwOTc4OSkgcm90YXRlKDE4MCwgMjIuNjY2NjY2NjY2NjY3LCAxOS42Mjk5MDkxNTI0NDcpIiAvPjxwb2x5bGluZSBwb2ludHM9IjIyLjY2NjY2NjY2NjY2NywgMCwgNDUuMzMzMzMzMzMzMzMzLCAzOS4yNTk4MTgzMDQ4OTUsIDAsIDM5LjI1OTgxODMwNDg5NSwgMjIuNjY2NjY2NjY2NjY3LCAwIiBmaWxsPSIjMjIyIiBmaWxsLW9wYWNpdHk9IjAuMTE1MzMzMzMzMzMzMzMiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLW9wYWNpdHk9IjAuMDIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDkwLjY2NjY2NjY2NjY2NywgNzguNTE5NjM2NjA5Nzg5KSByb3RhdGUoMCwgMjIuNjY2NjY2NjY2NjY3LCAxOS42Mjk5MDkxNTI0NDcpIiAvPjxwb2x5bGluZSBwb2ludHM9IjIyLjY2NjY2NjY2NjY2NywgMCwgNDUuMzMzMzMzMzMzMzMzLCAzOS4yNTk4MTgzMDQ4OTUsIDAsIDM5LjI1OTgxODMwNDg5NSwgMjIuNjY2NjY2NjY2NjY3LCAwIiBmaWxsPSIjMjIyIiBmaWxsLW9wYWNpdHk9IjAuMDgwNjY2NjY2NjY2NjY3IiBzdHJva2U9IiMwMDAiIHN0cm9rZS1vcGFjaXR5PSIwLjAyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMjIuNjY2NjY2NjY2NjY3LCAxMTcuNzc5NDU0OTE0NjgpIHJvdGF0ZSgwLCAyMi42NjY2NjY2NjY2NjcsIDE5LjYyOTkwOTE1MjQ0NykiIC8+PHBvbHlsaW5lIHBvaW50cz0iMjIuNjY2NjY2NjY2NjY3LCAwLCA0NS4zMzMzMzMzMzMzMzMsIDM5LjI1OTgxODMwNDg5NSwgMCwgMzkuMjU5ODE4MzA0ODk1LCAyMi42NjY2NjY2NjY2NjcsIDAiIGZpbGw9IiMyMjIiIGZpbGwtb3BhY2l0eT0iMC4wODA2NjY2NjY2NjY2NjciIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLW9wYWNpdHk9IjAuMDIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDExMy4zMzMzMzMzMzMzMywgMTE3Ljc3OTQ1NDkxNDY4KSByb3RhdGUoMCwgMjIuNjY2NjY2NjY2NjY3LCAxOS42Mjk5MDkxNTI0NDcpIiAvPjxwb2x5bGluZSBwb2ludHM9IjIyLjY2NjY2NjY2NjY2NywgMCwgNDUuMzMzMzMzMzMzMzMzLCAzOS4yNTk4MTgzMDQ4OTUsIDAsIDM5LjI1OTgxODMwNDg5NSwgMjIuNjY2NjY2NjY2NjY3LCAwIiBmaWxsPSIjMjIyIiBmaWxsLW9wYWNpdHk9IjAuMTUiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLW9wYWNpdHk9IjAuMDIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAsIDExNy43Nzk0NTQ5MTQ2OCkgcm90YXRlKDE4MCwgMjIuNjY2NjY2NjY2NjY3LCAxOS42Mjk5MDkxNTI0NDcpIiAvPjxwb2x5bGluZSBwb2ludHM9IjIyLjY2NjY2NjY2NjY2NywgMCwgNDUuMzMzMzMzMzMzMzMzLCAzOS4yNTk4MTgzMDQ4OTUsIDAsIDM5LjI1OTgxODMwNDg5NSwgMjIuNjY2NjY2NjY2NjY3LCAwIiBmaWxsPSIjZGRkIiBmaWxsLW9wYWNpdHk9IjAuMDg5MzMzMzMzMzMzMzMzIiBzdHJva2U9IiMwMDAiIHN0cm9rZS1vcGFjaXR5PSIwLjAyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyMi42NjY2NjY2NjY2NjcsIDExNy43Nzk0NTQ5MTQ2OCkgcm90YXRlKDAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48cG9seWxpbmUgcG9pbnRzPSIyMi42NjY2NjY2NjY2NjcsIDAsIDQ1LjMzMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1LCAwLCAzOS4yNTk4MTgzMDQ4OTUsIDIyLjY2NjY2NjY2NjY2NywgMCIgZmlsbD0iIzIyMiIgZmlsbC1vcGFjaXR5PSIwLjAyODY2NjY2NjY2NjY2NyIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utb3BhY2l0eT0iMC4wMiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNDUuMzMzMzMzMzMzMzMzLCAxMTcuNzc5NDU0OTE0NjgpIHJvdGF0ZSgxODAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48cG9seWxpbmUgcG9pbnRzPSIyMi42NjY2NjY2NjY2NjcsIDAsIDQ1LjMzMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1LCAwLCAzOS4yNTk4MTgzMDQ4OTUsIDIyLjY2NjY2NjY2NjY2NywgMCIgZmlsbD0iI2RkZCIgZmlsbC1vcGFjaXR5PSIwLjEyNCIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utb3BhY2l0eT0iMC4wMiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNjgsIDExNy43Nzk0NTQ5MTQ2OCkgcm90YXRlKimage/svg+xml;base64DAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48cG9seWxpbmUgcG9pbnRzPSIyMi42NjY2NjY2NjY2NjcsIDAsIDQ1LjMzMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1LCAwLCAzOS4yNTk4MTgzMDQ4OTUsIDIyLjY2NjY2NjY2NjY2NywgMCIgZmlsbD0iIzIyMiIgZmlsbC1vcGFjaXR5PSIwLjAyODY2NjY2NjY2NjY2NyIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utb3BhY2l0eT0iMC4wMiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoOTAuNjY2NjY2NjY2NjY3LCAxMTcuNzc5NDU0OTE0NjgpIHJvdGF0ZSgxODAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48cG9seWxpbmUgcG9pbnRzPSIyMi42NjY2NjY2NjY2NjcsIDAsIDQ1LjMzMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1LCAwLCAzOS4yNTk4MTgzMDQ4OTUsIDIyLjY2NjY2NjY2NjY2NywgMCIgZmlsbD0iI2RkZCIgZmlsbC1vcGFjaXR5PSIwLjE0MTMzMzMzMzMzMzMzIiBzdHJva2U9IiMwMDAiIHN0cm9rZS1vcGFjaXR5PSIwLjAyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMjIuNjY2NjY2NjY2NjY3LCAxNTcuMDM5MjczMjE5NTgpIHJvdGF0ZSgxODAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48cG9seWxpbmUgcG9pbnRzPSIyMi42NjY2NjY2NjY2NjcsIDAsIDQ1LjMzMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1LCAwLCAzOS4yNTk4MTgzMDQ4OTUsIDIyLjY2NjY2NjY2NjY2NywgMCIgZmlsbD0iI2RkZCIgZmlsbC1vcGFjaXR5PSIwLjE0MTMzMzMzMzMzMzMzIiBzdHJva2U9IiMwMDAiIHN0cm9rZS1vcGFjaXR5PSIwLjAyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxMTMuMzMzMzMzMzMzMzMsIDE1Ny4wMzkyNzMyMTk1OCkgcm90YXRlKDE4MCwgMjIuNjY2NjY2NjY2NjY3LCAxOS42Mjk5MDkxNTI0NDcpIiAvPjxwb2x5bGluZSBwb2ludHM9IjIyLjY2NjY2NjY2NjY2NywgMCwgNDUuMzMzMzMzMzMzMzMzLCAzOS4yNTk4MTgzMDQ4OTUsIDAsIDM5LjI1OTgxODMwNDg5NSwgMjIuNjY2NjY2NjY2NjY3LCAwIiBmaWxsPSIjMjIyIiBmaWxsLW9wYWNpdHk9IjAuMTMyNjY2NjY2NjY2NjciIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLW9wYWNpdHk9IjAuMDIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAsIDE1Ny4wMzkyNzMyMTk1OCkgcm90YXRlKDAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48cG9seWxpbmUgcG9pbnRzPSIyMi42NjY2NjY2NjY2NjcsIDAsIDQ1LjMzMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1LCAwLCAzOS4yNTk4MTgzMDQ4OTUsIDIyLjY2NjY2NjY2NjY2NywgMCIgZmlsbD0iI2RkZCIgZmlsbC1vcGFjaXR5PSIwLjEwNjY2NjY2NjY2NjY3IiBzdHJva2U9IiMwMDAiIHN0cm9rZS1vcGFjaXR5PSIwLjAyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyMi42NjY2NjY2NjY2NjcsIDE1Ny4wMzkyNzMyMTk1OCkgcm90YXRlKDE4MCwgMjIuNjY2NjY2NjY2NjY3LCAxOS42Mjk5MDkxNTI0NDcpIiAvPjxwb2x5bGluZSBwb2ludHM9IjIyLjY2NjY2NjY2NjY2NywgMCwgNDUuMzMzMzMzMzMzMzMzLCAzOS4yNTk4MTgzMDQ4OTUsIDAsIDM5LjI1OTgxODMwNDg5NSwgMjIuNjY2NjY2NjY2NjY3LCAwIiBmaWxsPSIjZGRkIiBmaWxsLW9wYWNpdHk9IjAuMDcyIiBzdHJva2U9IiMwMDAiIHN0cm9rZS1vcGFjaXR5PSIwLjAyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSg0NS4zMzMzMzMzMzMzMzMsIDE1Ny4wMzkyNzMyMTk1OCkgcm90YXRlKDAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48cG9seWxpbmUgcG9pbnRzPSIyMi42NjY2NjY2NjY2NjcsIDAsIDQ1LjMzMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1LCAwLCAzOS4yNTk4MTgzMDQ4OTUsIDIyLjY2NjY2NjY2NjY2NywgMCIgZmlsbD0iIzIyMiIgZmlsbC1vcGFjaXR5PSIwLjE1IiBzdHJva2U9IiMwMDAiIHN0cm9rZS1vcGFjaXR5PSIwLjAyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSg2OCwgMTU3LjAzOTI3MzIxOTU4KSByb3RhdGUoMTgwLCAyMi42NjY2NjY2NjY2NjcsIDE5LjYyOTkwOTE1MjQ0NykiIC8+PHBvbHlsaW5lIHBvaW50cz0iMjIuNjY2NjY2NjY2NjY3LCAwLCA0NS4zMzMzMzMzMzMzMzMsIDM5LjI1OTgxODMwNDg5NSwgMCwgMzkuMjU5ODE4MzA0ODk1LCAyMi42NjY2NjY2NjY2NjcsIDAiIGZpbGw9IiNkZGQiIGZpbGwtb3BhY2l0eT0iMC4xMjQiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLW9wYWNpdHk9IjAuMDIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDkwLjY2NjY2NjY2NjY2NywgMTU3LjAzOTI3MzIxOTU4KSByb3RhdGUoMCwgMjIuNjY2NjY2NjY2NjY3LCAxOS42Mjk5MDkxNTI0NDcpIiAvPjxwb2x5bGluZSBwb2ludHM9IjIyLjY2NjY2NjY2NjY2NywgMCwgNDUuMzMzMzMzMzMzMzMzLCAzOS4yNTk4MTgzMDQ4OTUsIDAsIDM5LjI1OTgxODMwNDg5NSwgMjIuNjY2NjY2NjY2NjY3LCAwIiBmaWxsPSIjZGRkIiBmaWxsLW9wYWNpdHk9IjAuMTI0IiBzdHJva2U9IiMwMDAiIHN0cm9rZS1vcGFjaXR5PSIwLjAyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMjIuNjY2NjY2NjY2NjY3LCAxOTYuMjk5MDkxNTI0NDcpIHJvdGF0ZSgwLCAyMi42NjY2NjY2NjY2NjcsIDE5LjYyOTkwOTE1MjQ0NykiIC8+PHBvbHlsaW5lIHBvaW50cz0iMjIuNjY2NjY2NjY2NjY3LCAwLCA0NS4zMzMzMzMzMzMzMzMsIDM5LjI1OTgxODMwNDg5NSwgMCwgMzkuMjU5ODE4MzA0ODk1LCAyMi42NjY2NjY2NjY2NjcsIDAiIGZpbGw9IiNkZGQiIGZpbGwtb3BhY2l0eT0iMC4xMjQiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLW9wYWNpdHk9IjAuMDIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDExMy4zMzMzMzMzMzMzMywgMTk2LjI5OTA5MTUyNDQ3KSByb3RhdGUoMCwgMjIuNjY2NjY2NjY2NjY3LCAxOS42Mjk5MDkxNTI0NDcpIiAvPjxwb2x5bGluZSBwb2ludHM9IjIyLjY2NjY2NjY2NjY2NywgMCwgNDUuMzMzMzMzMzMzMzMzLCAzOS4yNTk4MTgzMDQ4OTUsIDAsIDM5LjI1OTgxODMwNDg5NSwgMjIuNjY2NjY2NjY2NjY3LCAwIiBmaWxsPSIjMjIyIiBmaWxsLW9wYWNpdHk9IjAuMDQ2IiBzdHJva2U9IiMwMDAiIHN0cm9rZS1vcGFjaXR5PSIwLjAyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwLCAxOTYuMjk5MDkxNTI0NDcpIHJvdGF0ZSgxODAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48cG9seWxpbmUgcG9pbnRzPSIyMi42NjY2NjY2NjY2NjcsIDAsIDQ1LjMzMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1LCAwLCAzOS4yNTk4MTgzMDQ4OTUsIDIyLjY2NjY2NjY2NjY2NywgMCIgZmlsbD0iIzIyMiIgZmlsbC1vcGFjaXR5PSIwLjE1IiBzdHJva2U9IiMwMDAiIHN0cm9rZS1vcGFjaXR5PSIwLjAyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyMi42NjY2NjY2NjY2NjcsIDE5Ni4yOTkwOTE1MjQ0Nykgcm90YXRlKDAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48cG9seWxpbmUgcG9pbnRzPSIyMi42NjY2NjY2NjY2NjcsIDAsIDQ1LjMzMzMzMzMzMzMzMywgMzkuMjU5ODE4MzA0ODk1LCAwLCAzOS4yNTk4MTgzMDQ4OTUsIDIyLjY2NjY2NjY2NjY2NywgMCIgZmlsbD0iIzIyMiIgZmlsbC1vcGFjaXR5PSIwLjEzMjY2NjY2NjY2NjY3IiBzdHJva2U9IiMwMDAiIHN0cm9rZS1vcGFjaXR5PSIwLjAyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSg0NS4zMzMzMzMzMzMzMzMsIDE5Ni4yOTkwOTE1MjQ0Nykgcm90YXRlKDE4MCwgMjIuNjY2NjY2NjY2NjY3LCAxOS42Mjk5MDkxNTI0NDcpIiAvPjxwb2x5bGluZSBwb2ludHM9IjIyLjY2NjY2NjY2NjY2NywgMCwgNDUuMzMzMzMzMzMzMzMzLCAzOS4yNTk4MTgzMDQ4OTUsIDAsIDM5LjI1OTgxODMwNDg5NSwgMjIuNjY2NjY2NjY2NjY3LCAwIiBmaWxsPSIjZGRkIiBmaWxsLW9wYWNpdHk9IjAuMDIiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLW9wYWNpdHk9IjAuMDIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDY4LCAxOTYuMjk5MDkxNTI0NDcpIHJvdGF0ZSgwLCAyMi42NjY2NjY2NjY2NjcsIDE5LjYyOTkwOTE1MjQ0NykiIC8+PHBvbHlsaW5lIHBvaW50cz0iMjIuNjY2NjY2NjY2NjY3LCAwLCA0NS4zMzMzMzMzMzMzMzMsIDM5LjI1OTgxODMwNDg5NSwgMCwgMzkuMjU5ODE4MzA0ODk1LCAyMi42NjY2NjY2NjY2NjcsIDAiIGZpbGw9IiNkZGQiIGZpbGwtb3BhY2l0eT0iMC4wMiIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utb3BhY2l0eT0iMC4wMiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoOTAuNjY2NjY2NjY2NjY3LCAxOTYuMjk5MDkxNTI0NDcpIHJvdGF0ZSgxODAsIDIyLjY2NjY2NjY2NjY2NywgMTkuNjI5OTA5MTUyNDQ3KSIgLz48L3N2Zz4=, enddate: 0, fullname: astah* Professional ライセンス, fullnamedisplay: astah* Professional ライセンス, hasprogress: false, hidden: false, id: 106, idnumber: , isfavourite: false, progress: 0, shortname: astah, showactivitydates: false, showcompletionconditions: null, showshortname: false, startdate: 1382454000, summary: astah* Professional のライセンスファイルを配布するコースです, summaryformat: 1, viewurl: https://hope.fun.ac.jp/course/view.php?id=106, visible: true}, deleteurl: https://hope.fun.ac.jp/calendar/delete.php?id=22030&course=106, description: , descriptionformat: 1, editurl: https://hope.fun.ac.jp/course/mod.php?update=53774&return=1&sesskey=SS7pHEoCRZ, eventcount: null, eventtype: close, formattedtime: <a href="https://hope.fun.ac.jp/calendar/view.php?view=day&amp;time=1667055540">2022年 10月 29日</a>, 23:59, groupid: null, groupname: null, icon: {alttext: ウィンドウを閉じる, component: quiz, key: icon}, id: 22030, instance: 53774, isactionevent: true, iscategoryevent: false, iscourseevent: false, location: , modulename: quiz, name: astah* ライセンスキー (大学院生用 〜2022/10/29) の受験可能期間の終了, normalisedeventtype: course, normalisedeventtypetext: コースイベント, repeatid: null, subscription: {displayeventsource: false}, timeduration: 0, timemodified: 1649638759, timesort: 1667055540, timestart: 1667055540, timeusermidnight: 1666969200, url: https://hope.fun.ac.jp/mod/quiz/view.php?id=53774, userid: 16, viewurl: https://hope.fun.ac.jp/calendar/view.php?view=day&course=106&time=1667055540#event_22030, visible: 1""";
    final data = jsonDecode(json);
    print(data['name']);
  });
}

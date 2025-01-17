The `builtins.merge` command adds the known builtins to a `builtin` subnamespace within the current namespace.

```ucm
  ☝️  The namespace .tmp is empty.

.tmp> builtins.merge

  Done.

.tmp> ls builtin

  1.  Any                 (builtin type)
  2.  Any/                (2 definitions)
  3.  Boolean             (builtin type)
  4.  Boolean/            (1 definition)
  5.  Bytes               (builtin type)
  6.  Bytes/              (33 definitions)
  7.  Char                (builtin type)
  8.  Char/               (3 definitions)
  9.  Code                (builtin type)
  10. Code/               (8 definitions)
  11. Debug/              (2 definitions)
  12. Doc                 (type)
  13. Doc/                (6 definitions)
  14. Either              (type)
  15. Either/             (2 definitions)
  16. Exception           (type)
  17. Exception/          (1 definition)
  18. Float               (builtin type)
  19. Float/              (38 definitions)
  20. Handle/             (1 definition)
  21. ImmutableArray      (builtin type)
  22. ImmutableArray/     (3 definitions)
  23. ImmutableByteArray  (builtin type)
  24. ImmutableByteArray/ (8 definitions)
  25. Int                 (builtin type)
  26. Int/                (31 definitions)
  27. IsPropagated        (type)
  28. IsPropagated/       (1 definition)
  29. IsTest              (type)
  30. IsTest/             (1 definition)
  31. Link                (type)
  32. Link/               (5 definitions)
  33. List                (builtin type)
  34. List/               (10 definitions)
  35. MutableArray        (builtin type)
  36. MutableArray/       (6 definitions)
  37. MutableByteArray    (builtin type)
  38. MutableByteArray/   (14 definitions)
  39. Nat                 (builtin type)
  40. Nat/                (28 definitions)
  41. Optional            (type)
  42. Optional/           (2 definitions)
  43. Pattern/            (7 definitions)
  44. Ref                 (builtin type)
  45. Ref/                (2 definitions)
  46. Request             (builtin type)
  47. Scope               (builtin type)
  48. Scope/              (6 definitions)
  49. SeqView             (type)
  50. SeqView/            (2 definitions)
  51. Socket/             (1 definition)
  52. Test/               (3 definitions)
  53. Text                (builtin type)
  54. Text/               (32 definitions)
  55. ThreadId/           (1 definition)
  56. Tuple               (type)
  57. Tuple/              (1 definition)
  58. Unit                (type)
  59. Unit/               (1 definition)
  60. Universal/          (6 definitions)
  61. Value               (builtin type)
  62. Value/              (5 definitions)
  63. bug                 (a -> b)
  64. crypto/             (13 definitions)
  65. io2/                (138 definitions)
  66. metadata/           (2 definitions)
  67. todo                (a -> b)
  68. unsafe/             (1 definition)

```

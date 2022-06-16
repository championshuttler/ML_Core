/*###################################################################################
## HPCC SYSTEMS software Copyright (C) 2020 - 2021 HPCC Systems.  All rights reserved.
##################################################################################### */

IMPORT $.^.^.^.^ as ML_Core;

EXPORT TestData := MODULE
  EXPORT Layout := RECORD
    UNSIGNED id;
    UNSIGNED f1;
    UNSIGNED f2;
    UNSIGNED f3;
    UNSIGNED f4;
  END;

  EXPORT ds := DATASET([{ 1,  1,  2,  3, 1},
                        { 2,  4,  5,  6, 2},
                        { 3,  7,  8,  9, 3},
                        { 4, 10, 11, 12, 2},
                        { 5, 13, 14, 15, 3},
                        { 6, 16, 17, 18, 2},
                        { 7, 19, 20, 21, 3},
                        { 8, 22, 23, 24, 1},
                        { 9, 25, 26, 27, 2},
                        {10, 28, 29, 30, 1},
                        {11, 31, 32, 33, 1},
                        {12, 34, 35, 36, 3}], Layout);
  EXPORT ds4 := DATASET([{ 1,  1,  2,  1,  3},
                         { 2,  4,  5,  2,  6},
                         { 3,  7,  8,  3,  9},
                         { 4, 10, 11,  2, 12},
                         { 5, 13, 14,  3, 15},
                         { 6, 16, 17,  2, 18},
                         { 7, 19, 20,  3, 21},
                         { 8, 22, 23,  1, 24},
                         { 9, 25, 26,  2, 27},
                         {10, 28, 29,  1, 30},
                         {11, 31, 32,  1, 33},
                         {12, 34, 35,  3, 36}], Layout);
  EXPORT expTrainData := DATASET([{1, 1, 1,  1},
                                  {1, 1, 2,  2},
                                  {1, 1, 3,  3},
                                  {1, 1, 4,  1},
                                  {1, 2, 1,  4},
                                  {1, 2, 2,  5},
                                  {1, 2, 3,  6},
                                  {1, 2, 4,  2},
                                  {1, 3, 1,  7},
                                  {1, 3, 2,  8},
                                  {1, 3, 3,  9},
                                  {1, 3, 4,  3},
                                  {1, 4, 1, 10},
                                  {1, 4, 2, 11},
                                  {1, 4, 3, 12},
                                  {1, 4, 4,  2},
                                  {1, 5, 1, 13},
                                  {1, 5, 2, 14},
                                  {1, 5, 3, 15},
                                  {1, 5, 4,  3},
                                  {1, 6, 1, 22},
                                  {1, 6, 2, 23},
                                  {1, 6, 3, 24},
                                  {1, 6, 4,  1}], ML_Core.Types.NumericField);
  EXPORT expTrainData4 := DATASET([{1, 1, 1, 1},
                                  {1, 1, 2,  2},
                                  {1, 1, 3,  1},
                                  {1, 1, 4,  3},
                                  {1, 2, 1,  4},
                                  {1, 2, 2,  5},
                                  {1, 2, 3,  2},
                                  {1, 2, 4,  6},
                                  {1, 3, 1,  7},
                                  {1, 3, 2,  8},
                                  {1, 3, 3,  3},
                                  {1, 3, 4,  9},
                                  {1, 4, 1, 10},
                                  {1, 4, 2, 11},
                                  {1, 4, 3,  2},
                                  {1, 4, 4, 12},
                                  {1, 5, 1, 13},
                                  {1, 5, 2, 14},
                                  {1, 5, 3,  3},
                                  {1, 5, 4, 15},
                                  {1, 6, 1, 22},
                                  {1, 6, 2, 23},
                                  {1, 6, 3,  1},
                                  {1, 6, 4, 24}], ML_Core.Types.NumericField);

  EXPORT expTestData := DATASET([{1,   1, 1, 16},
                                  {1,  1, 2, 17},
                                  {1,  1, 3, 18},
                                  {1,  1, 4,  2},
                                  {1,  2, 1, 19},
                                  {1,  2, 2, 20},
                                  {1,  2, 3, 21},
                                  {1,  2, 4,  3},
                                  {1,  3, 1, 25},
                                  {1,  3, 2, 26},
                                  {1,  3, 3, 27},
                                  {1,  3, 4,  2},
                                  {1,  4, 1, 28},
                                  {1,  4, 2, 29},
                                  {1,  4, 3, 30},
                                  {1,  4, 4,  1},
                                  {1,  5, 1, 31},
                                  {1,  5, 2, 32},
                                  {1,  5, 3, 33},
                                  {1,  5, 4,  1},
                                  {1,  6, 1, 34},
                                  {1,  6, 2, 35},
                                  {1,  6, 3, 36},
                                  {1,  6, 4,  3}], ML_Core.Types.NumericField);
  EXPORT expTestData3 := DATASET([{1,  1, 1, 16},
                                  {1,  1, 2, 17},
                                  {1,  1, 3, 18},
                                  {1,  1, 4,  2},
                                  {1,  2, 1, 19},
                                  {1,  2, 2, 20},
                                  {1,  2, 3, 21},
                                  {1,  2, 4,  3},
                                  {1,  3, 1, 28},
                                  {1,  3, 2, 29},
                                  {1,  3, 3, 30},
                                  {1,  3, 4,  1}], ML_Core.Types.NumericField);
  EXPORT expTestData4 := DATASET([{1,  1, 1, 16},
                                  {1,  1, 2, 17},
                                  {1,  1, 3,  2},
                                  {1,  1, 4, 18},
                                  {1,  2, 1, 19},
                                  {1,  2, 2, 20},
                                  {1,  2, 3,  3},
                                  {1,  2, 4, 21},
                                  {1,  3, 1, 28},
                                  {1,  3, 2, 29},
                                  {1,  3, 3,  1},
                                  {1,  3, 4, 30}], ML_Core.Types.NumericField);
END;
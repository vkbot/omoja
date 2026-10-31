.class public Landroidx/constraintlayout/core/state/TransitionParser;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static varargs map(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 20
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_11

    .line 21
    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    return v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return v0
.end method

.method private static varargs map(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    array-length v1, p3

    .line 3
    if-ge v0, v1, :cond_12

    .line 4
    .line 5
    aget-object v1, p3, v0

    .line 6
    .line 7
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_f

    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 14
    .line 15
    .line 16
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_12
    return-void
.end method

.method public static parse(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .registers 12
    .param p0    # Landroidx/constraintlayout/core/parser/CLObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/constraintlayout/core/state/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/state/Transition;->resetProperties()V

    .line 2
    .line 3
    .line 4
    const-string v0, "pathMotionArc"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    .line 11
    .line 12
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v0, :cond_7e

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v5, 0x5

    .line 24
    const/4 v6, 0x4

    .line 25
    const/4 v7, 0x3

    .line 26
    const/4 v8, 0x2

    .line 27
    const/4 v9, -0x1

    .line 28
    sparse-switch v4, :sswitch_data_b4

    .line 29
    .line 30
    .line 31
    goto :goto_60

    .line 32
    :sswitch_1f
    const-string v4, "below"

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_28

    .line 39
    .line 40
    goto :goto_60

    .line 41
    :cond_28
    move v9, v5

    .line 42
    goto :goto_60

    .line 43
    :sswitch_2a
    const-string v4, "above"

    .line 44
    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_33

    .line 50
    .line 51
    goto :goto_60

    .line 52
    :cond_33
    move v9, v6

    .line 53
    goto :goto_60

    .line 54
    :sswitch_35
    const-string v4, "none"

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3e

    .line 61
    .line 62
    goto :goto_60

    .line 63
    :cond_3e
    move v9, v7

    .line 64
    goto :goto_60

    .line 65
    :sswitch_40
    const-string v4, "flip"

    .line 66
    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_49

    .line 72
    .line 73
    goto :goto_60

    .line 74
    :cond_49
    move v9, v8

    .line 75
    goto :goto_60

    .line 76
    :sswitch_4b
    const-string v4, "startHorizontal"

    .line 77
    .line 78
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_54

    .line 83
    .line 84
    goto :goto_60

    .line 85
    :cond_54
    move v9, v2

    .line 86
    goto :goto_60

    .line 87
    :sswitch_56
    const-string v4, "startVertical"

    .line 88
    .line 89
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_5f

    .line 94
    .line 95
    goto :goto_60

    .line 96
    :cond_5f
    move v9, v3

    .line 97
    :goto_60
    const/16 v0, 0x1fd

    .line 98
    .line 99
    packed-switch v9, :pswitch_data_ce

    .line 100
    .line 101
    .line 102
    goto :goto_7d

    .line 103
    :pswitch_66
    invoke-virtual {v1, v0, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 104
    .line 105
    .line 106
    goto :goto_7d

    .line 107
    :pswitch_6a
    invoke-virtual {v1, v0, v5}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 108
    .line 109
    .line 110
    goto :goto_7d

    .line 111
    :pswitch_6e
    invoke-virtual {v1, v0, v3}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 112
    .line 113
    .line 114
    goto :goto_7d

    .line 115
    :pswitch_72
    invoke-virtual {v1, v0, v7}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 116
    .line 117
    .line 118
    goto :goto_7d

    .line 119
    :pswitch_76
    invoke-virtual {v1, v0, v8}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 120
    .line 121
    .line 122
    goto :goto_7d

    .line 123
    :pswitch_7a
    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 124
    .line 125
    .line 126
    :goto_7d
    move v3, v2

    .line 127
    :cond_7e
    const-string v0, "interpolator"

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_8c

    .line 134
    .line 135
    const/16 v3, 0x2c1

    .line 136
    .line 137
    invoke-virtual {v1, v3, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    move v3, v2

    .line 141
    :cond_8c
    const-string v0, "staggered"

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-nez v4, :cond_9e

    .line 152
    .line 153
    const/16 v3, 0x2c2

    .line 154
    .line 155
    invoke-virtual {v1, v3, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    .line 156
    .line 157
    .line 158
    goto :goto_9f

    .line 159
    :cond_9e
    move v2, v3

    .line 160
    :goto_9f
    if-eqz v2, :cond_a4

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/state/Transition;->setTransitionProperties(Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    .line 163
    .line 164
    .line 165
    :cond_a4
    const-string v0, "onSwipe"

    .line 166
    .line 167
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getObjectOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    if-eqz v0, :cond_af

    .line 172
    .line 173
    invoke-static {v0, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseOnSwipe(Landroidx/constraintlayout/core/parser/CLContainer;Landroidx/constraintlayout/core/state/Transition;)V

    .line 174
    .line 175
    .line 176
    :cond_af
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseKeyFrames(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    nop

    .line 181
    :sswitch_data_b4
    .sparse-switch
        -0x6eaff208 -> :sswitch_56
        -0x3c0665da -> :sswitch_4b
        0x30006d -> :sswitch_40
        0x33af38 -> :sswitch_35
        0x585239d -> :sswitch_2a
        0x5948c31 -> :sswitch_1f
    .end sparse-switch

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_76
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
    .end packed-switch
.end method

.method public static parse(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;Landroidx/constraintlayout/core/state/CorePixelDp;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    invoke-static {p0, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parse(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    return-void
.end method

.method private static parseKeyAttribute(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .registers 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "target"

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_e

    .line 12
    .line 13
    goto/16 :goto_1fe

    .line 14
    .line 15
    :cond_e
    const-string v3, "frames"

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-nez v3, :cond_18

    .line 22
    .line 23
    goto/16 :goto_1fe

    .line 24
    .line 25
    :cond_18
    const-string v4, "transitionEasing"

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v12, "rotationZ"

    .line 32
    .line 33
    const-string v13, "alpha"

    .line 34
    .line 35
    const-string v5, "scaleX"

    .line 36
    .line 37
    const-string v6, "scaleY"

    .line 38
    .line 39
    const-string v7, "translationX"

    .line 40
    .line 41
    const-string v8, "translationY"

    .line 42
    .line 43
    const-string v9, "translationZ"

    .line 44
    .line 45
    const-string v10, "rotationX"

    .line 46
    .line 47
    const-string v11, "rotationY"

    .line 48
    .line 49
    filled-new-array/range {v5 .. v13}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const/16 v6, 0x9

    .line 54
    .line 55
    new-array v7, v6, [I

    .line 56
    .line 57
    fill-array-data v7, :array_200

    .line 58
    .line 59
    .line 60
    new-array v8, v6, [Z

    .line 61
    .line 62
    fill-array-data v8, :array_216

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    new-array v10, v9, [Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    .line 70
    .line 71
    const/4 v12, 0x0

    .line 72
    :goto_47
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    if-ge v12, v13, :cond_57

    .line 77
    .line 78
    new-instance v13, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    .line 79
    .line 80
    invoke-direct {v13}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    .line 81
    .line 82
    .line 83
    aput-object v13, v10, v12

    .line 84
    .line 85
    add-int/lit8 v12, v12, 0x1

    .line 86
    .line 87
    goto :goto_47

    .line 88
    :cond_57
    const/4 v12, 0x0

    .line 89
    :goto_58
    if-ge v12, v6, :cond_c5

    .line 90
    .line 91
    aget-object v13, v5, v12

    .line 92
    .line 93
    aget v14, v7, v12

    .line 94
    .line 95
    aget-boolean v15, v8, v12

    .line 96
    .line 97
    invoke-virtual {v0, v13}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    const/16 v16, 0x0

    .line 102
    .line 103
    if-eqz v6, :cond_7d

    .line 104
    .line 105
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    if-ne v11, v9, :cond_6f

    .line 110
    .line 111
    goto :goto_7d

    .line 112
    :cond_6f
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    .line 113
    .line 114
    const-string v2, "incorrect size for "

    .line 115
    .line 116
    const-string v3, " array, not matching targets array!"

    .line 117
    .line 118
    invoke-static {v2, v13, v3}, Lai/onnxruntime/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-direct {v1, v2, v0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    .line 123
    .line 124
    .line 125
    throw v1

    .line 126
    :cond_7d
    :goto_7d
    if-eqz v6, :cond_9e

    .line 127
    .line 128
    move/from16 v11, v16

    .line 129
    .line 130
    :goto_81
    if-ge v11, v9, :cond_9b

    .line 131
    .line 132
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    move-object/from16 v17, v5

    .line 137
    .line 138
    if-eqz v15, :cond_91

    .line 139
    .line 140
    iget-object v5, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    .line 141
    .line 142
    invoke-interface {v5, v13}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    .line 143
    .line 144
    .line 145
    move-result v13

    .line 146
    :cond_91
    aget-object v5, v10, v11

    .line 147
    .line 148
    invoke-virtual {v5, v14, v13}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    .line 149
    .line 150
    .line 151
    add-int/lit8 v11, v11, 0x1

    .line 152
    .line 153
    move-object/from16 v5, v17

    .line 154
    .line 155
    goto :goto_81

    .line 156
    :cond_9b
    move-object/from16 v17, v5

    .line 157
    .line 158
    goto :goto_be

    .line 159
    :cond_9e
    move-object/from16 v17, v5

    .line 160
    .line 161
    invoke-virtual {v0, v13}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-nez v6, :cond_be

    .line 170
    .line 171
    if-eqz v15, :cond_b2

    .line 172
    .line 173
    iget-object v6, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    .line 174
    .line 175
    invoke-interface {v6, v5}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    :cond_b2
    move/from16 v6, v16

    .line 180
    .line 181
    :goto_b4
    if-ge v6, v9, :cond_be

    .line 182
    .line 183
    aget-object v11, v10, v6

    .line 184
    .line 185
    invoke-virtual {v11, v14, v5}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    .line 186
    .line 187
    .line 188
    add-int/lit8 v6, v6, 0x1

    .line 189
    .line 190
    goto :goto_b4

    .line 191
    :cond_be
    :goto_be
    add-int/lit8 v12, v12, 0x1

    .line 192
    .line 193
    move-object/from16 v5, v17

    .line 194
    .line 195
    const/16 v6, 0x9

    .line 196
    .line 197
    goto :goto_58

    .line 198
    :cond_c5
    const/16 v16, 0x0

    .line 199
    .line 200
    const-string v5, "custom"

    .line 201
    .line 202
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    if-eqz v5, :cond_1b7

    .line 207
    .line 208
    instance-of v7, v5, Landroidx/constraintlayout/core/parser/CLObject;

    .line 209
    .line 210
    if-eqz v7, :cond_1b7

    .line 211
    .line 212
    check-cast v5, Landroidx/constraintlayout/core/parser/CLObject;

    .line 213
    .line 214
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    const/4 v11, 0x2

    .line 223
    new-array v11, v11, [I

    .line 224
    .line 225
    const/4 v12, 0x1

    .line 226
    aput v7, v11, v12

    .line 227
    .line 228
    aput v8, v11, v16

    .line 229
    .line 230
    const-class v8, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 231
    .line 232
    invoke-static {v8, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    check-cast v8, [[Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 237
    .line 238
    move/from16 v11, v16

    .line 239
    .line 240
    :goto_ef
    if-ge v11, v7, :cond_1b8

    .line 241
    .line 242
    invoke-virtual {v5, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 243
    .line 244
    .line 245
    move-result-object v12

    .line 246
    check-cast v12, Landroidx/constraintlayout/core/parser/CLKey;

    .line 247
    .line 248
    invoke-virtual {v12}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v13

    .line 252
    invoke-virtual {v12}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    .line 253
    .line 254
    .line 255
    move-result-object v14

    .line 256
    instance-of v14, v14, Landroidx/constraintlayout/core/parser/CLArray;

    .line 257
    .line 258
    const-wide/16 v17, -0x1

    .line 259
    .line 260
    const/16 v6, 0x385

    .line 261
    .line 262
    if-eqz v14, :cond_16a

    .line 263
    .line 264
    invoke-virtual {v12}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    check-cast v12, Landroidx/constraintlayout/core/parser/CLArray;

    .line 269
    .line 270
    invoke-virtual {v12}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 271
    .line 272
    .line 273
    move-result v14

    .line 274
    if-ne v14, v9, :cond_13b

    .line 275
    .line 276
    if-lez v14, :cond_13b

    .line 277
    .line 278
    move/from16 v14, v16

    .line 279
    .line 280
    invoke-virtual {v12, v14}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 281
    .line 282
    .line 283
    move-result-object v15

    .line 284
    instance-of v15, v15, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 285
    .line 286
    if-eqz v15, :cond_13e

    .line 287
    .line 288
    move v15, v14

    .line 289
    :goto_120
    if-ge v15, v9, :cond_13b

    .line 290
    .line 291
    aget-object v16, v8, v15

    .line 292
    .line 293
    new-instance v14, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 294
    .line 295
    invoke-virtual {v12, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 296
    .line 297
    .line 298
    move-result-object v17

    .line 299
    move-object/from16 v19, v5

    .line 300
    .line 301
    invoke-virtual/range {v17 .. v17}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    invoke-direct {v14, v13, v6, v5}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IF)V

    .line 306
    .line 307
    .line 308
    aput-object v14, v16, v11

    .line 309
    .line 310
    add-int/lit8 v15, v15, 0x1

    .line 311
    .line 312
    move-object/from16 v5, v19

    .line 313
    .line 314
    const/4 v14, 0x0

    .line 315
    goto :goto_120

    .line 316
    :cond_13b
    move-object/from16 v19, v5

    .line 317
    .line 318
    goto :goto_167

    .line 319
    :cond_13e
    move-object/from16 v19, v5

    .line 320
    .line 321
    const/4 v5, 0x0

    .line 322
    :goto_141
    if-ge v5, v9, :cond_167

    .line 323
    .line 324
    invoke-virtual {v12, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    invoke-static {v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseColorString(Ljava/lang/String;)J

    .line 333
    .line 334
    .line 335
    move-result-wide v14

    .line 336
    cmp-long v6, v14, v17

    .line 337
    .line 338
    if-eqz v6, :cond_162

    .line 339
    .line 340
    aget-object v6, v8, v5

    .line 341
    .line 342
    move/from16 v20, v5

    .line 343
    .line 344
    new-instance v5, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 345
    .line 346
    long-to-int v14, v14

    .line 347
    const/16 v15, 0x386

    .line 348
    .line 349
    invoke-direct {v5, v13, v15, v14}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;II)V

    .line 350
    .line 351
    .line 352
    aput-object v5, v6, v11

    .line 353
    .line 354
    goto :goto_164

    .line 355
    :cond_162
    move/from16 v20, v5

    .line 356
    .line 357
    :goto_164
    add-int/lit8 v5, v20, 0x1

    .line 358
    .line 359
    goto :goto_141

    .line 360
    :cond_167
    :goto_167
    move/from16 v17, v7

    .line 361
    .line 362
    goto :goto_1ad

    .line 363
    :cond_16a
    move-object/from16 v19, v5

    .line 364
    .line 365
    invoke-virtual {v12}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    instance-of v12, v5, Landroidx/constraintlayout/core/parser/CLNumber;

    .line 370
    .line 371
    if-eqz v12, :cond_187

    .line 372
    .line 373
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    const/4 v12, 0x0

    .line 378
    :goto_179
    if-ge v12, v9, :cond_167

    .line 379
    .line 380
    aget-object v14, v8, v12

    .line 381
    .line 382
    new-instance v15, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 383
    .line 384
    invoke-direct {v15, v13, v6, v5}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IF)V

    .line 385
    .line 386
    .line 387
    aput-object v15, v14, v11

    .line 388
    .line 389
    add-int/lit8 v12, v12, 0x1

    .line 390
    .line 391
    goto :goto_179

    .line 392
    :cond_187
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    invoke-static {v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->parseColorString(Ljava/lang/String;)J

    .line 397
    .line 398
    .line 399
    move-result-wide v5

    .line 400
    cmp-long v12, v5, v17

    .line 401
    .line 402
    if-eqz v12, :cond_167

    .line 403
    .line 404
    const/4 v12, 0x0

    .line 405
    :goto_194
    if-ge v12, v9, :cond_167

    .line 406
    .line 407
    aget-object v14, v8, v12

    .line 408
    .line 409
    new-instance v15, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 410
    .line 411
    move/from16 v17, v7

    .line 412
    .line 413
    long-to-int v7, v5

    .line 414
    move-wide/from16 v20, v5

    .line 415
    .line 416
    const/16 v5, 0x386

    .line 417
    .line 418
    invoke-direct {v15, v13, v5, v7}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;II)V

    .line 419
    .line 420
    .line 421
    aput-object v15, v14, v11

    .line 422
    .line 423
    add-int/lit8 v12, v12, 0x1

    .line 424
    .line 425
    move/from16 v7, v17

    .line 426
    .line 427
    move-wide/from16 v5, v20

    .line 428
    .line 429
    goto :goto_194

    .line 430
    :goto_1ad
    add-int/lit8 v11, v11, 0x1

    .line 431
    .line 432
    move/from16 v7, v17

    .line 433
    .line 434
    move-object/from16 v5, v19

    .line 435
    .line 436
    const/16 v16, 0x0

    .line 437
    .line 438
    goto/16 :goto_ef

    .line 439
    .line 440
    :cond_1b7
    const/4 v8, 0x0

    .line 441
    :cond_1b8
    const-string v5, "curveFit"

    .line 442
    .line 443
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    const/4 v5, 0x0

    .line 448
    :goto_1bf
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 449
    .line 450
    .line 451
    move-result v6

    .line 452
    if-ge v5, v6, :cond_1fe

    .line 453
    .line 454
    const/4 v6, 0x0

    .line 455
    :goto_1c6
    if-ge v6, v9, :cond_1fb

    .line 456
    .line 457
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v7

    .line 461
    aget-object v11, v10, v6

    .line 462
    .line 463
    if-eqz v0, :cond_1e1

    .line 464
    .line 465
    const-string v12, "spline"

    .line 466
    .line 467
    const-string v13, "linear"

    .line 468
    .line 469
    filled-new-array {v12, v13}, [Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v12

    .line 473
    invoke-static {v0, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    move-result v12

    .line 477
    const/16 v13, 0x1fc

    .line 478
    .line 479
    invoke-virtual {v11, v13, v12}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 480
    .line 481
    .line 482
    :cond_1e1
    const/16 v12, 0x1f5

    .line 483
    .line 484
    invoke-virtual {v11, v12, v4}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->addIfNotNull(ILjava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 488
    .line 489
    .line 490
    move-result v12

    .line 491
    const/16 v13, 0x64

    .line 492
    .line 493
    invoke-virtual {v11, v13, v12}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 494
    .line 495
    .line 496
    if-eqz v8, :cond_1f4

    .line 497
    .line 498
    aget-object v12, v8, v6

    .line 499
    .line 500
    goto :goto_1f5

    .line 501
    :cond_1f4
    const/4 v12, 0x0

    .line 502
    :goto_1f5
    invoke-virtual {v1, v7, v11, v12}, Landroidx/constraintlayout/core/state/Transition;->addKeyAttribute(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/TypedBundle;[Landroidx/constraintlayout/core/motion/CustomVariable;)V

    .line 503
    .line 504
    .line 505
    add-int/lit8 v6, v6, 0x1

    .line 506
    .line 507
    goto :goto_1c6

    .line 508
    :cond_1fb
    add-int/lit8 v5, v5, 0x1

    .line 509
    .line 510
    goto :goto_1bf

    .line 511
    :cond_1fe
    :goto_1fe
    return-void

    .line 512
    nop

    .line 513
    :array_200
    .array-data 4
        0x137
        0x138
        0x130
        0x131
        0x132
        0x134
        0x135
        0x136
        0x12f
    .end array-data

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_216
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static parseKeyCycle(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "target"

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "frames"

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "transitionEasing"

    .line 18
    .line 19
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v15, "offset"

    .line 24
    .line 25
    const-string v16, "phase"

    .line 26
    .line 27
    const-string v5, "scaleX"

    .line 28
    .line 29
    const-string v6, "scaleY"

    .line 30
    .line 31
    const-string v7, "translationX"

    .line 32
    .line 33
    const-string v8, "translationY"

    .line 34
    .line 35
    const-string v9, "translationZ"

    .line 36
    .line 37
    const-string v10, "rotationX"

    .line 38
    .line 39
    const-string v11, "rotationY"

    .line 40
    .line 41
    const-string v12, "rotationZ"

    .line 42
    .line 43
    const-string v13, "alpha"

    .line 44
    .line 45
    const-string v14, "period"

    .line 46
    .line 47
    filled-new-array/range {v5 .. v16}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const/16 v6, 0xc

    .line 52
    .line 53
    new-array v7, v6, [I

    .line 54
    .line 55
    fill-array-data v7, :array_15e

    .line 56
    .line 57
    .line 58
    new-array v8, v6, [I

    .line 59
    .line 60
    fill-array-data v8, :array_17a

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    new-array v10, v9, [Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    .line 68
    .line 69
    const/4 v12, 0x0

    .line 70
    :goto_45
    if-ge v12, v9, :cond_51

    .line 71
    .line 72
    new-instance v13, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    .line 73
    .line 74
    invoke-direct {v13}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    .line 75
    .line 76
    .line 77
    aput-object v13, v10, v12

    .line 78
    .line 79
    add-int/lit8 v12, v12, 0x1

    .line 80
    .line 81
    goto :goto_45

    .line 82
    :cond_51
    const/4 v12, 0x0

    .line 83
    const/4 v13, 0x0

    .line 84
    :goto_53
    const/4 v14, 0x1

    .line 85
    if-ge v12, v6, :cond_66

    .line 86
    .line 87
    aget-object v15, v5, v12

    .line 88
    .line 89
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->has(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v15

    .line 93
    if-eqz v15, :cond_63

    .line 94
    .line 95
    aget v15, v8, v12

    .line 96
    .line 97
    if-ne v15, v14, :cond_63

    .line 98
    .line 99
    move v13, v14

    .line 100
    :cond_63
    add-int/lit8 v12, v12, 0x1

    .line 101
    .line 102
    goto :goto_53

    .line 103
    :cond_66
    const/4 v12, 0x0

    .line 104
    :goto_67
    if-ge v12, v6, :cond_ea

    .line 105
    .line 106
    aget-object v15, v5, v12

    .line 107
    .line 108
    aget v6, v7, v12

    .line 109
    .line 110
    aget v11, v8, v12

    .line 111
    .line 112
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 113
    .line 114
    .line 115
    move-result-object v14

    .line 116
    move-object/from16 v17, v5

    .line 117
    .line 118
    if-eqz v14, :cond_86

    .line 119
    .line 120
    invoke-virtual {v14}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-ne v5, v9, :cond_7e

    .line 125
    .line 126
    goto :goto_86

    .line 127
    :cond_7e
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    .line 128
    .line 129
    const-string v2, "incorrect size for $attrName array, not matching targets array!"

    .line 130
    .line 131
    invoke-direct {v1, v2, v0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    .line 132
    .line 133
    .line 134
    throw v1

    .line 135
    :cond_86
    :goto_86
    if-eqz v14, :cond_b3

    .line 136
    .line 137
    const/4 v15, 0x0

    .line 138
    :goto_89
    if-ge v15, v9, :cond_b0

    .line 139
    .line 140
    invoke-virtual {v14, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    move-object/from16 v18, v7

    .line 145
    .line 146
    const/4 v7, 0x1

    .line 147
    if-ne v11, v7, :cond_9b

    .line 148
    .line 149
    iget-object v7, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    .line 150
    .line 151
    invoke-interface {v7, v5}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    goto :goto_a6

    .line 156
    :cond_9b
    const/4 v7, 0x2

    .line 157
    if-ne v11, v7, :cond_a6

    .line 158
    .line 159
    if-eqz v13, :cond_a6

    .line 160
    .line 161
    iget-object v7, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    .line 162
    .line 163
    invoke-interface {v7, v5}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    :cond_a6
    :goto_a6
    aget-object v7, v10, v15

    .line 168
    .line 169
    invoke-virtual {v7, v6, v5}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    .line 170
    .line 171
    .line 172
    add-int/lit8 v15, v15, 0x1

    .line 173
    .line 174
    move-object/from16 v7, v18

    .line 175
    .line 176
    goto :goto_89

    .line 177
    :cond_b0
    move-object/from16 v18, v7

    .line 178
    .line 179
    goto :goto_df

    .line 180
    :cond_b3
    move-object/from16 v18, v7

    .line 181
    .line 182
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    if-nez v7, :cond_df

    .line 191
    .line 192
    const/4 v7, 0x1

    .line 193
    if-ne v11, v7, :cond_c9

    .line 194
    .line 195
    iget-object v7, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    .line 196
    .line 197
    invoke-interface {v7, v5}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    goto :goto_d4

    .line 202
    :cond_c9
    const/4 v7, 0x2

    .line 203
    if-ne v11, v7, :cond_d4

    .line 204
    .line 205
    if-eqz v13, :cond_d4

    .line 206
    .line 207
    iget-object v7, v1, Landroidx/constraintlayout/core/state/Transition;->mToPixel:Landroidx/constraintlayout/core/state/CorePixelDp;

    .line 208
    .line 209
    invoke-interface {v7, v5}, Landroidx/constraintlayout/core/state/CorePixelDp;->toPixels(F)F

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    :cond_d4
    :goto_d4
    const/4 v7, 0x0

    .line 214
    :goto_d5
    if-ge v7, v9, :cond_df

    .line 215
    .line 216
    aget-object v11, v10, v7

    .line 217
    .line 218
    invoke-virtual {v11, v6, v5}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    .line 219
    .line 220
    .line 221
    add-int/lit8 v7, v7, 0x1

    .line 222
    .line 223
    goto :goto_d5

    .line 224
    :cond_df
    :goto_df
    add-int/lit8 v12, v12, 0x1

    .line 225
    .line 226
    move-object/from16 v5, v17

    .line 227
    .line 228
    move-object/from16 v7, v18

    .line 229
    .line 230
    const/16 v6, 0xc

    .line 231
    .line 232
    const/4 v14, 0x1

    .line 233
    goto/16 :goto_67

    .line 234
    .line 235
    :cond_ea
    const-string v5, "curveFit"

    .line 236
    .line 237
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    const-string v6, "easing"

    .line 242
    .line 243
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    const-string v7, "waveShape"

    .line 248
    .line 249
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    const-string v8, "customWave"

    .line 254
    .line 255
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    const/4 v8, 0x0

    .line 260
    :goto_103
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 261
    .line 262
    .line 263
    move-result v11

    .line 264
    if-ge v8, v11, :cond_15d

    .line 265
    .line 266
    const/4 v11, 0x0

    .line 267
    :goto_10a
    if-ge v11, v9, :cond_15a

    .line 268
    .line 269
    invoke-virtual {v2, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    aget-object v13, v10, v11

    .line 274
    .line 275
    if-eqz v5, :cond_126

    .line 276
    .line 277
    const-string v14, "linear"

    .line 278
    .line 279
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v14

    .line 283
    const/16 v15, 0x191

    .line 284
    .line 285
    if-nez v14, :cond_12d

    .line 286
    .line 287
    const-string v14, "spline"

    .line 288
    .line 289
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v14

    .line 293
    if-nez v14, :cond_128

    .line 294
    .line 295
    :cond_126
    :goto_126
    const/4 v14, 0x1

    .line 296
    goto :goto_131

    .line 297
    :cond_128
    const/4 v14, 0x0

    .line 298
    invoke-virtual {v13, v15, v14}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 299
    .line 300
    .line 301
    goto :goto_126

    .line 302
    :cond_12d
    const/4 v14, 0x1

    .line 303
    invoke-virtual {v13, v15, v14}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 304
    .line 305
    .line 306
    :goto_131
    const/16 v15, 0x1f5

    .line 307
    .line 308
    invoke-virtual {v13, v15, v4}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->addIfNotNull(ILjava/lang/String;)V

    .line 309
    .line 310
    .line 311
    if-eqz v6, :cond_13d

    .line 312
    .line 313
    const/16 v15, 0x1a4

    .line 314
    .line 315
    invoke-virtual {v13, v15, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 316
    .line 317
    .line 318
    :cond_13d
    if-eqz v7, :cond_144

    .line 319
    .line 320
    const/16 v15, 0x1a5

    .line 321
    .line 322
    invoke-virtual {v13, v15, v7}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 323
    .line 324
    .line 325
    :cond_144
    if-eqz v0, :cond_14b

    .line 326
    .line 327
    const/16 v15, 0x1a6

    .line 328
    .line 329
    invoke-virtual {v13, v15, v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    .line 330
    .line 331
    .line 332
    :cond_14b
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 333
    .line 334
    .line 335
    move-result v15

    .line 336
    const/16 v14, 0x64

    .line 337
    .line 338
    invoke-virtual {v13, v14, v15}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v12, v13}, Landroidx/constraintlayout/core/state/Transition;->addKeyCycle(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    .line 342
    .line 343
    .line 344
    add-int/lit8 v11, v11, 0x1

    .line 345
    .line 346
    goto :goto_10a

    .line 347
    :cond_15a
    add-int/lit8 v8, v8, 0x1

    .line 348
    .line 349
    goto :goto_103

    .line 350
    :cond_15d
    return-void

    .line 351
    :array_15e
    .array-data 4
        0x137
        0x138
        0x130
        0x131
        0x132
        0x134
        0x135
        0x136
        0x193
        0x1a7
        0x1a8
        0x1a9
    .end array-data

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    :array_17a
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data
.end method

.method public static parseKeyFrames(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .registers 7

    .line 1
    const-string v0, "KeyFrames"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getObjectOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_9

    .line 8
    .line 9
    goto :goto_66

    .line 10
    :cond_9
    const-string v0, "KeyPositions"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_29

    .line 18
    .line 19
    move v2, v1

    .line 20
    :goto_13
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v2, v3, :cond_29

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLObject;

    .line 31
    .line 32
    if-eqz v4, :cond_26

    .line 33
    .line 34
    check-cast v3, Landroidx/constraintlayout/core/parser/CLObject;

    .line 35
    .line 36
    invoke-static {v3, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseKeyPosition(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    .line 37
    .line 38
    .line 39
    :cond_26
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_13

    .line 42
    :cond_29
    const-string v0, "KeyAttributes"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_48

    .line 49
    .line 50
    move v2, v1

    .line 51
    :goto_32
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-ge v2, v3, :cond_48

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLObject;

    .line 62
    .line 63
    if-eqz v4, :cond_45

    .line 64
    .line 65
    check-cast v3, Landroidx/constraintlayout/core/parser/CLObject;

    .line 66
    .line 67
    invoke-static {v3, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseKeyAttribute(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    .line 68
    .line 69
    .line 70
    :cond_45
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_32

    .line 73
    :cond_48
    const-string v0, "KeyCycles"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-eqz p0, :cond_66

    .line 80
    .line 81
    :goto_50
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-ge v1, v0, :cond_66

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    instance-of v2, v0, Landroidx/constraintlayout/core/parser/CLObject;

    .line 92
    .line 93
    if-eqz v2, :cond_63

    .line 94
    .line 95
    check-cast v0, Landroidx/constraintlayout/core/parser/CLObject;

    .line 96
    .line 97
    invoke-static {v0, p1}, Landroidx/constraintlayout/core/state/TransitionParser;->parseKeyCycle(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V

    .line 98
    .line 99
    .line 100
    :cond_63
    add-int/lit8 v1, v1, 0x1

    .line 101
    .line 102
    goto :goto_50

    .line 103
    :cond_66
    :goto_66
    return-void
.end method

.method private static parseKeyPosition(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/Transition;)V
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    .line 4
    .line 5
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "target"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "frames"

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getArray(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "percentX"

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const-string v5, "percentY"

    .line 27
    .line 28
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const-string v6, "percentWidth"

    .line 33
    .line 34
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const-string v7, "percentHeight"

    .line 39
    .line 40
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getArrayOrNull(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLArray;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    const-string v8, "pathMotionArc"

    .line 45
    .line 46
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    const-string v9, "transitionEasing"

    .line 51
    .line 52
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const-string v10, "curveFit"

    .line 57
    .line 58
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    const-string v11, "type"

    .line 63
    .line 64
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v11, "parentRelative"

    .line 69
    .line 70
    if-nez v0, :cond_48

    .line 71
    .line 72
    move-object v0, v11

    .line 73
    :cond_48
    if-eqz v4, :cond_56

    .line 74
    .line 75
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    if-eq v12, v13, :cond_56

    .line 84
    .line 85
    goto/16 :goto_e8

    .line 86
    .line 87
    :cond_56
    if-eqz v5, :cond_64

    .line 88
    .line 89
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    if-eq v12, v13, :cond_64

    .line 98
    .line 99
    goto/16 :goto_e8

    .line 100
    .line 101
    :cond_64
    const/4 v13, 0x0

    .line 102
    :goto_65
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 103
    .line 104
    .line 105
    move-result v14

    .line 106
    if-ge v13, v14, :cond_e8

    .line 107
    .line 108
    invoke-virtual {v2, v13}, Landroidx/constraintlayout/core/parser/CLContainer;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v14

    .line 112
    const-string v15, "deltaRelative"

    .line 113
    .line 114
    const-string v12, "pathRelative"

    .line 115
    .line 116
    filled-new-array {v15, v12, v11}, [Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    invoke-static {v0, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->clear()V

    .line 125
    .line 126
    .line 127
    const/16 v15, 0x1fe

    .line 128
    .line 129
    invoke-virtual {v1, v15, v12}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 130
    .line 131
    .line 132
    if-eqz v10, :cond_92

    .line 133
    .line 134
    const-string v12, "spline"

    .line 135
    .line 136
    const-string v15, "linear"

    .line 137
    .line 138
    filled-new-array {v12, v15}, [Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    const/16 v15, 0x1fc

    .line 143
    .line 144
    invoke-static {v1, v15, v10, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILjava/lang/String;[Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_92
    const/16 v12, 0x1f5

    .line 148
    .line 149
    invoke-virtual {v1, v12, v9}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->addIfNotNull(ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    if-eqz v8, :cond_ae

    .line 153
    .line 154
    const-string v19, "below"

    .line 155
    .line 156
    const-string v20, "above"

    .line 157
    .line 158
    const-string v15, "none"

    .line 159
    .line 160
    const-string v16, "startVertical"

    .line 161
    .line 162
    const-string v17, "startHorizontal"

    .line 163
    .line 164
    const-string v18, "flip"

    .line 165
    .line 166
    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    const/16 v15, 0x1fd

    .line 171
    .line 172
    invoke-static {v1, v15, v8, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILjava/lang/String;[Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_ae
    const/4 v12, 0x0

    .line 176
    :goto_af
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLContainer;->size()I

    .line 177
    .line 178
    .line 179
    move-result v15

    .line 180
    if-ge v12, v15, :cond_de

    .line 181
    .line 182
    invoke-virtual {v3, v12}, Landroidx/constraintlayout/core/parser/CLContainer;->getInt(I)I

    .line 183
    .line 184
    .line 185
    move-result v15

    .line 186
    move-object/from16 v16, v0

    .line 187
    .line 188
    const/16 v0, 0x64

    .line 189
    .line 190
    invoke-virtual {v1, v0, v15}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    .line 191
    .line 192
    .line 193
    const/16 v0, 0x1fa

    .line 194
    .line 195
    invoke-static {v1, v0, v4, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V

    .line 196
    .line 197
    .line 198
    const/16 v0, 0x1fb

    .line 199
    .line 200
    invoke-static {v1, v0, v5, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V

    .line 201
    .line 202
    .line 203
    const/16 v0, 0x1f7

    .line 204
    .line 205
    invoke-static {v1, v0, v6, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V

    .line 206
    .line 207
    .line 208
    const/16 v0, 0x1f8

    .line 209
    .line 210
    invoke-static {v1, v0, v7, v12}, Landroidx/constraintlayout/core/state/TransitionParser;->set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V

    .line 211
    .line 212
    .line 213
    move-object/from16 v0, p1

    .line 214
    .line 215
    invoke-virtual {v0, v14, v1}, Landroidx/constraintlayout/core/state/Transition;->addKeyPosition(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/TypedBundle;)V

    .line 216
    .line 217
    .line 218
    add-int/lit8 v12, v12, 0x1

    .line 219
    .line 220
    move-object/from16 v0, v16

    .line 221
    .line 222
    goto :goto_af

    .line 223
    :cond_de
    move-object/from16 v16, v0

    .line 224
    .line 225
    move-object/from16 v0, p1

    .line 226
    .line 227
    add-int/lit8 v13, v13, 0x1

    .line 228
    .line 229
    move-object/from16 v0, v16

    .line 230
    .line 231
    goto/16 :goto_65

    .line 232
    .line 233
    :cond_e8
    :goto_e8
    return-void
.end method

.method private static parseOnSwipe(Landroidx/constraintlayout/core/parser/CLContainer;Landroidx/constraintlayout/core/state/Transition;)V
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "anchor"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "side"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->SIDES:[Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2, v3}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "direction"

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    sget-object v4, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->DIRECTIONS:[Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v3, v4}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const-string v4, "scale"

    .line 34
    .line 35
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const-string v5, "threshold"

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const-string v6, "maxVelocity"

    .line 46
    .line 47
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    const-string v7, "maxAccel"

    .line 52
    .line 53
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    const-string v8, "limitBounds"

    .line 58
    .line 59
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    const-string v9, "mode"

    .line 64
    .line 65
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    sget-object v10, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->MODE:[Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v9, v10}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    const-string v10, "touchUp"

    .line 76
    .line 77
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    sget-object v11, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->TOUCH_UP:[Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v10, v11}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    const-string v11, "springMass"

    .line 88
    .line 89
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    const-string v12, "springStiffness"

    .line 94
    .line 95
    invoke-virtual {v0, v12}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    const-string v13, "springDamping"

    .line 100
    .line 101
    invoke-virtual {v0, v13}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    const-string v14, "stopThreshold"

    .line 106
    .line 107
    invoke-virtual {v0, v14}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloatOrNaN(Ljava/lang/String;)F

    .line 108
    .line 109
    .line 110
    move-result v14

    .line 111
    const-string v15, "springBoundary"

    .line 112
    .line 113
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v15

    .line 117
    move/from16 v16, v14

    .line 118
    .line 119
    sget-object v14, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->BOUNDARY:[Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v15, v14}, Landroidx/constraintlayout/core/state/TransitionParser;->map(Ljava/lang/String;[Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    const-string v15, "around"

    .line 126
    .line 127
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/state/Transition;->createOnSwipe()Landroidx/constraintlayout/core/state/Transition$OnSwipe;

    .line 132
    .line 133
    .line 134
    move-result-object v15

    .line 135
    invoke-virtual {v15, v1}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setAnchorId(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v15, v2}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setAnchorSide(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v15, v3}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setDragDirection(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v15, v4}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setDragScale(F)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v15, v5}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setDragThreshold(F)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v15, v6}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setMaxVelocity(F)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v15, v7}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setMaxAcceleration(F)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v15, v8}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setLimitBoundsTo(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v15, v9}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setAutoCompleteMode(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v15, v10}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setOnTouchUp(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v15, v11}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringMass(F)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v15, v12}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringStiffness(F)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v15, v13}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringDamping(F)V

    .line 172
    .line 173
    .line 174
    move/from16 v1, v16

    .line 175
    .line 176
    invoke-virtual {v15, v1}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringStopThreshold(F)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v15, v14}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setSpringBoundary(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v15, v0}, Landroidx/constraintlayout/core/state/Transition$OnSwipe;->setRotationCenterId(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method private static set(Landroidx/constraintlayout/core/motion/utils/TypedBundle;ILandroidx/constraintlayout/core/parser/CLArray;I)V
    .registers 4

    .line 1
    if-eqz p2, :cond_9

    .line 2
    .line 3
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/parser/CLContainer;->getFloat(I)F

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method

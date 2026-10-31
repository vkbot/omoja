.class public final Ld9/h;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ld9/h;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Ld9/h;->c:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Ld9/h;->b:I

    .line 2
    .line 3
    const-string v1, ": "

    .line 4
    .line 5
    iget-object v2, p0, Ld9/h;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Throwable;

    .line 11
    .line 12
    check-cast v2, Lv8/e;

    .line 13
    .line 14
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 15
    .line 16
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v2, v0}, Lv8/e;->resumeWith(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_0
    check-cast p1, Lg9/a;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    check-cast v2, Li9/r1;

    .line 32
    .line 33
    iget-object v0, v2, Li9/r1;->a:Le9/b;

    .line 34
    .line 35
    invoke-interface {v0}, Le9/h;->a()Lg9/e;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "first"

    .line 40
    .line 41
    invoke-static {p1, v1, v0}, Lg9/a;->a(Lg9/a;Ljava/lang/String;Lg9/e;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, v2, Li9/r1;->b:Le9/b;

    .line 45
    .line 46
    invoke-interface {v0}, Le9/h;->a()Lg9/e;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "second"

    .line 51
    .line 52
    invoke-static {p1, v1, v0}, Lg9/a;->a(Lg9/a;Ljava/lang/String;Lg9/e;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v2, Li9/r1;->c:Le9/b;

    .line 56
    .line 57
    invoke-interface {v0}, Le9/h;->a()Lg9/e;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "third"

    .line 62
    .line 63
    invoke-static {p1, v1, v0}, Lg9/a;->a(Lg9/a;Ljava/lang/String;Lg9/e;)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p1

    .line 69
    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    check-cast v2, Li9/f1;

    .line 81
    .line 82
    iget-object v3, v2, Li9/f1;->e:[Ljava/lang/String;

    .line 83
    .line 84
    aget-object v3, v3, p1

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, p1}, Li9/f1;->f(I)Lg9/e;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-interface {p1}, Lg9/e;->a()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :pswitch_2
    check-cast p1, Lg9/a;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    check-cast v2, Li9/b1;

    .line 114
    .line 115
    iget-object v0, v2, Li9/b1;->b:Ljava/util/List;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    iput-object v0, p1, Lg9/a;->b:Ljava/util/List;

    .line 121
    .line 122
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 123
    .line 124
    return-object p1

    .line 125
    :pswitch_3
    check-cast p1, Ljava/lang/Number;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    check-cast v2, Lg9/f;

    .line 137
    .line 138
    iget-object v3, v2, Lg9/f;->f:[Ljava/lang/String;

    .line 139
    .line 140
    aget-object v3, v3, p1

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v1, v2, Lg9/f;->g:[Lg9/e;

    .line 149
    .line 150
    aget-object p1, v1, p1

    .line 151
    .line 152
    invoke-interface {p1}, Lg9/e;->a()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    return-object p1

    .line 164
    :pswitch_4
    check-cast p1, Lg9/a;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    sget-object v0, Li9/q1;->b:Li9/j1;

    .line 175
    .line 176
    const-string v1, "type"

    .line 177
    .line 178
    invoke-static {p1, v1, v0}, Lg9/a;->a(Lg9/a;Ljava/lang/String;Lg9/e;)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v1, "kotlinx.serialization.Polymorphic<"

    .line 184
    .line 185
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    check-cast v2, Le9/e;

    .line 189
    .line 190
    iget-object v1, v2, Le9/e;->a:Lkotlin/reflect/KClass;

    .line 191
    .line 192
    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const/16 v1, 0x3e

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    sget-object v1, Lg9/c;->e:Lg9/c;

    .line 209
    .line 210
    const/4 v3, 0x0

    .line 211
    new-array v3, v3, [Lg9/e;

    .line 212
    .line 213
    sget-object v4, Lg9/i;->b:Lg9/i;

    .line 214
    .line 215
    invoke-static {v0, v1, v3, v4}, Lcom/bumptech/glide/c;->b(Ljava/lang/String;Lcom/bumptech/glide/d;[Lg9/e;Lkotlin/jvm/functions/Function1;)Lg9/f;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const-string v1, "value"

    .line 220
    .line 221
    invoke-static {p1, v1, v0}, Lg9/a;->a(Lg9/a;Ljava/lang/String;Lg9/e;)V

    .line 222
    .line 223
    .line 224
    iget-object v0, v2, Le9/e;->b:Ljava/util/List;

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    iput-object v0, p1, Lg9/a;->b:Ljava/util/List;

    .line 230
    .line 231
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 232
    .line 233
    return-object p1

    .line 234
    :pswitch_5
    check-cast p1, Ljava/lang/Throwable;

    .line 235
    .line 236
    check-cast v2, Ld9/j;

    .line 237
    .line 238
    invoke-virtual {v2}, Ld9/j;->b()V

    .line 239
    .line 240
    .line 241
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 242
    .line 243
    return-object p1

    .line 244
    nop

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

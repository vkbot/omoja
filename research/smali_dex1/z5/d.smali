.class public final enum Lz5/d;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final enum c:Lz5/d;

.field public static final enum d:Lz5/d;

.field public static final enum e:Lz5/d;

.field public static final enum f:Lz5/d;

.field public static final enum g:Lz5/d;

.field public static final enum h:Lz5/d;

.field public static final enum i:Lz5/d;

.field public static final enum j:Lz5/d;

.field public static final enum k:Lz5/d;

.field public static final enum l:Lz5/d;

.field public static final synthetic m:[Lz5/d;


# instance fields
.field public final b:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 1
    new-instance v0, Lz5/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-class v2, Ljava/lang/Object;

    .line 5
    .line 6
    const-string v3, "OTHER"

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lz5/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lz5/d;

    .line 12
    .line 13
    const-class v2, Ljava/lang/Void;

    .line 14
    .line 15
    const-string v3, "PURE_BARCODE"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-direct {v1, v2, v3, v4}, Lz5/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lz5/d;->c:Lz5/d;

    .line 22
    .line 23
    move-object v3, v2

    .line 24
    new-instance v2, Lz5/d;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    const-class v5, Ljava/util/List;

    .line 28
    .line 29
    const-string v6, "POSSIBLE_FORMATS"

    .line 30
    .line 31
    invoke-direct {v2, v5, v6, v4}, Lz5/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    sput-object v2, Lz5/d;->d:Lz5/d;

    .line 35
    .line 36
    move-object v4, v3

    .line 37
    new-instance v3, Lz5/d;

    .line 38
    .line 39
    const-string v5, "TRY_HARDER"

    .line 40
    .line 41
    const/4 v6, 0x3

    .line 42
    invoke-direct {v3, v4, v5, v6}, Lz5/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v3, Lz5/d;->e:Lz5/d;

    .line 46
    .line 47
    move-object v5, v4

    .line 48
    new-instance v4, Lz5/d;

    .line 49
    .line 50
    const/4 v6, 0x4

    .line 51
    const-class v7, Ljava/lang/String;

    .line 52
    .line 53
    const-string v8, "CHARACTER_SET"

    .line 54
    .line 55
    invoke-direct {v4, v7, v8, v6}, Lz5/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    sput-object v4, Lz5/d;->f:Lz5/d;

    .line 59
    .line 60
    move-object v6, v5

    .line 61
    new-instance v5, Lz5/d;

    .line 62
    .line 63
    const-class v7, [I

    .line 64
    .line 65
    const-string v8, "ALLOWED_LENGTHS"

    .line 66
    .line 67
    const/4 v9, 0x5

    .line 68
    invoke-direct {v5, v7, v8, v9}, Lz5/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    sput-object v5, Lz5/d;->g:Lz5/d;

    .line 72
    .line 73
    move-object v8, v6

    .line 74
    new-instance v6, Lz5/d;

    .line 75
    .line 76
    const-string v9, "ASSUME_CODE_39_CHECK_DIGIT"

    .line 77
    .line 78
    const/4 v10, 0x6

    .line 79
    invoke-direct {v6, v8, v9, v10}, Lz5/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    sput-object v6, Lz5/d;->h:Lz5/d;

    .line 83
    .line 84
    move-object v9, v7

    .line 85
    new-instance v7, Lz5/d;

    .line 86
    .line 87
    const-string v10, "ASSUME_GS1"

    .line 88
    .line 89
    const/4 v11, 0x7

    .line 90
    invoke-direct {v7, v8, v10, v11}, Lz5/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    sput-object v7, Lz5/d;->i:Lz5/d;

    .line 94
    .line 95
    move-object v10, v8

    .line 96
    new-instance v8, Lz5/d;

    .line 97
    .line 98
    const-string v11, "RETURN_CODABAR_START_END"

    .line 99
    .line 100
    const/16 v12, 0x8

    .line 101
    .line 102
    invoke-direct {v8, v10, v11, v12}, Lz5/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    sput-object v8, Lz5/d;->j:Lz5/d;

    .line 106
    .line 107
    move-object v10, v9

    .line 108
    new-instance v9, Lz5/d;

    .line 109
    .line 110
    const/16 v11, 0x9

    .line 111
    .line 112
    const-class v12, Lz5/p;

    .line 113
    .line 114
    const-string v13, "NEED_RESULT_POINT_CALLBACK"

    .line 115
    .line 116
    invoke-direct {v9, v12, v13, v11}, Lz5/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    sput-object v9, Lz5/d;->k:Lz5/d;

    .line 120
    .line 121
    move-object v11, v10

    .line 122
    new-instance v10, Lz5/d;

    .line 123
    .line 124
    const-string v12, "ALLOWED_EAN_EXTENSIONS"

    .line 125
    .line 126
    const/16 v13, 0xa

    .line 127
    .line 128
    invoke-direct {v10, v11, v12, v13}, Lz5/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    sput-object v10, Lz5/d;->l:Lz5/d;

    .line 132
    .line 133
    filled-new-array/range {v0 .. v10}, [Lz5/d;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sput-object v0, Lz5/d;->m:[Lz5/d;

    .line 138
    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz5/d;->b:Ljava/lang/Class;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz5/d;
    .registers 2

    .line 1
    const-class v0, Lz5/d;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lz5/d;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lz5/d;
    .registers 1

    .line 1
    sget-object v0, Lz5/d;->m:[Lz5/d;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lz5/d;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lz5/d;

    .line 8
    .line 9
    return-object v0
.end method

.class public final Lq7/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq7/j;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez p3, :cond_c

    .line 10
    .line 11
    sget-object p3, Lq7/n;->a:[Ljava/lang/String;

    .line 12
    .line 13
    :cond_c
    const-string v1, "supports"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1b

    .line 20
    .line 21
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    if-ne v1, v0, :cond_1b

    .line 24
    .line 25
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_1b
    const-string v1, "unsupported"

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x1

    .line 36
    if-eqz v1, :cond_2c

    .line 37
    .line 38
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 39
    .line 40
    if-ne v1, v0, :cond_2c

    .line 41
    .line 42
    iput-boolean v3, p0, Lq7/j;->b:Z

    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_2c
    const-string v1, "protocols"

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iget-object v4, p0, Lq7/j;->a:Ljava/util/ArrayList;

    .line 52
    .line 53
    if-eqz v1, :cond_3a

    .line 54
    .line 55
    array-length v1, p3

    .line 56
    if-nez v1, :cond_3a

    .line 57
    .line 58
    return-object v4

    .line 59
    :cond_3a
    const-string v1, "selectProtocol"

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v5, 0x0

    .line 66
    if-nez v1, :cond_4b

    .line 67
    .line 68
    const-string v1, "select"

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_80

    .line 75
    .line 76
    :cond_4b
    const-class v1, Ljava/lang/String;

    .line 77
    .line 78
    if-ne v1, v0, :cond_80

    .line 79
    .line 80
    array-length v0, p3

    .line 81
    if-ne v0, v3, :cond_80

    .line 82
    .line 83
    aget-object v0, p3, v5

    .line 84
    .line 85
    instance-of v1, v0, Ljava/util/List;

    .line 86
    .line 87
    if-eqz v1, :cond_80

    .line 88
    .line 89
    check-cast v0, Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    move p2, v5

    .line 96
    :goto_5f
    if-ge p2, p1, :cond_77

    .line 97
    .line 98
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    if-eqz p3, :cond_74

    .line 107
    .line 108
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Ljava/lang/String;

    .line 113
    .line 114
    iput-object p1, p0, Lq7/j;->c:Ljava/lang/String;

    .line 115
    .line 116
    return-object p1

    .line 117
    :cond_74
    add-int/lit8 p2, p2, 0x1

    .line 118
    .line 119
    goto :goto_5f

    .line 120
    :cond_77
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Ljava/lang/String;

    .line 125
    .line 126
    iput-object p1, p0, Lq7/j;->c:Ljava/lang/String;

    .line 127
    .line 128
    return-object p1

    .line 129
    :cond_80
    const-string v0, "protocolSelected"

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_90

    .line 136
    .line 137
    const-string v0, "selected"

    .line 138
    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eqz p1, :cond_9a

    .line 144
    .line 145
    :cond_90
    array-length p1, p3

    .line 146
    if-ne p1, v3, :cond_9a

    .line 147
    .line 148
    aget-object p1, p3, v5

    .line 149
    .line 150
    check-cast p1, Ljava/lang/String;

    .line 151
    .line 152
    iput-object p1, p0, Lq7/j;->c:Ljava/lang/String;

    .line 153
    .line 154
    return-object v2

    .line 155
    :cond_9a
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    return-object p1
.end method

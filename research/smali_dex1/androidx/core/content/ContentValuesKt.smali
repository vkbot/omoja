.class public final Landroidx/core/content/ContentValuesKt;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a;\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "contentValuesOf",
        "Landroid/content/ContentValues;",
        "pairs",
        "",
        "Lkotlin/Pair;",
        "",
        "",
        "([Lkotlin/Pair;)Landroid/content/ContentValues;",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final varargs contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 5
    .line 6
    .line 7
    array-length v1, p0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    if-ge v2, v1, :cond_8b

    .line 10
    .line 11
    aget-object v3, p0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-nez v3, :cond_1c

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_75

    .line 29
    :cond_1c
    instance-of v5, v3, Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v5, :cond_26

    .line 32
    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_75

    .line 39
    :cond_26
    instance-of v5, v3, Ljava/lang/Integer;

    .line 40
    .line 41
    if-eqz v5, :cond_30

    .line 42
    .line 43
    check-cast v3, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    .line 47
    .line 48
    goto :goto_75

    .line 49
    :cond_30
    instance-of v5, v3, Ljava/lang/Long;

    .line 50
    .line 51
    if-eqz v5, :cond_3a

    .line 52
    .line 53
    check-cast v3, Ljava/lang/Long;

    .line 54
    .line 55
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    .line 57
    .line 58
    goto :goto_75

    .line 59
    :cond_3a
    instance-of v5, v3, Ljava/lang/Boolean;

    .line 60
    .line 61
    if-eqz v5, :cond_44

    .line 62
    .line 63
    check-cast v3, Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 66
    .line 67
    .line 68
    goto :goto_75

    .line 69
    :cond_44
    instance-of v5, v3, Ljava/lang/Float;

    .line 70
    .line 71
    if-eqz v5, :cond_4e

    .line 72
    .line 73
    check-cast v3, Ljava/lang/Float;

    .line 74
    .line 75
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 76
    .line 77
    .line 78
    goto :goto_75

    .line 79
    :cond_4e
    instance-of v5, v3, Ljava/lang/Double;

    .line 80
    .line 81
    if-eqz v5, :cond_58

    .line 82
    .line 83
    check-cast v3, Ljava/lang/Double;

    .line 84
    .line 85
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 86
    .line 87
    .line 88
    goto :goto_75

    .line 89
    :cond_58
    instance-of v5, v3, [B

    .line 90
    .line 91
    if-eqz v5, :cond_62

    .line 92
    .line 93
    check-cast v3, [B

    .line 94
    .line 95
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 96
    .line 97
    .line 98
    goto :goto_75

    .line 99
    :cond_62
    instance-of v5, v3, Ljava/lang/Byte;

    .line 100
    .line 101
    if-eqz v5, :cond_6c

    .line 102
    .line 103
    check-cast v3, Ljava/lang/Byte;

    .line 104
    .line 105
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 106
    .line 107
    .line 108
    goto :goto_75

    .line 109
    :cond_6c
    instance-of v5, v3, Ljava/lang/Short;

    .line 110
    .line 111
    if-eqz v5, :cond_78

    .line 112
    .line 113
    check-cast v3, Ljava/lang/Short;

    .line 114
    .line 115
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 116
    .line 117
    .line 118
    :goto_75
    add-int/lit8 v2, v2, 0x1

    .line 119
    .line 120
    goto :goto_8

    .line 121
    :cond_78
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    const-string v0, " for key \""

    .line 130
    .line 131
    const/16 v1, 0x22

    .line 132
    .line 133
    const-string v2, "Illegal value type "

    .line 134
    .line 135
    invoke-static {v2, p0, v0, v4, v1}, Lai/onnxruntime/b;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 136
    .line 137
    .line 138
    const/4 p0, 0x0

    .line 139
    return-object p0

    .line 140
    :cond_8b
    return-object v0
.end method

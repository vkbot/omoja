.class public final synthetic Ll5/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lk5/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Ll5/b;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ll5/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 9

    .line 1
    iget v0, p0, Ll5/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_96

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll5/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/firebase/components/ComponentRegistrar;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_a
    iget-object v0, p0, Ll5/b;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "."

    .line 16
    .line 17
    const-string v2, "Could not instantiate "

    .line 18
    .line 19
    const-string v3, " is not an instance of com.google.firebase.components.ComponentRegistrar"

    .line 20
    .line 21
    const-string v4, "Class "

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    :try_start_17
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    const-class v7, Lcom/google/firebase/components/ComponentRegistrar;

    .line 29
    .line 30
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_37

    .line 35
    .line 36
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/google/firebase/components/ComponentRegistrar;

    .line 45
    .line 46
    move-object v5, v3

    .line 47
    goto :goto_8a

    .line 48
    :catch_2f
    move-exception v1

    .line 49
    goto :goto_4c

    .line 50
    :catch_31
    move-exception v1

    .line 51
    goto :goto_56

    .line 52
    :catch_33
    move-exception v3

    .line 53
    goto :goto_60

    .line 54
    :catch_35
    move-exception v3

    .line 55
    goto :goto_6a

    .line 56
    :cond_37
    new-instance v6, Lt4/k;

    .line 57
    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v6
    :try_end_4c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_4c} :catch_74
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_4c} :catch_35
    .catch Ljava/lang/InstantiationException; {:try_start_17 .. :try_end_4c} :catch_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_4c} :catch_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_4c} :catch_2f

    .line 77
    :goto_4c
    new-instance v3, Lt4/k;

    .line 78
    .line 79
    invoke-static {v2, v0}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {v3, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v3

    .line 87
    :goto_56
    new-instance v3, Lt4/k;

    .line 88
    .line 89
    invoke-static {v2, v0}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {v3, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw v3

    .line 97
    :goto_60
    new-instance v4, Lt4/k;

    .line 98
    .line 99
    invoke-static {v2, v0, v1}, Lai/onnxruntime/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {v4, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v4

    .line 107
    :goto_6a
    new-instance v4, Lt4/k;

    .line 108
    .line 109
    invoke-static {v2, v0, v1}, Lai/onnxruntime/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-direct {v4, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    throw v4

    .line 117
    :catch_74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v0, " is not an found."

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const-string v1, "ComponentDiscovery"

    .line 135
    .line 136
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :goto_8a
    return-object v5

    .line 140
    :pswitch_8b
    iget-object v0, p0, Ll5/b;->b:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v0, Lo4/f;

    .line 143
    .line 144
    new-instance v1, Lm5/c;

    .line 145
    .line 146
    invoke-direct {v1, v0}, Lm5/c;-><init>(Lo4/f;)V

    .line 147
    .line 148
    .line 149
    return-object v1

    .line 150
    nop

    .line 151
    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_8b
        :pswitch_a
    .end packed-switch
.end method

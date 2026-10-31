.class public final Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration."
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = ""
        imports = {}
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar;",
        "Lcom/google/firebase/components/ComponentRegistrar;",
        "<init>",
        "()V",
        "",
        "Lt4/a;",
        "getComponents",
        "()Ljava/util/List;",
        "com.google.firebase-firebase-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseCommonKtxRegistrar\n+ 2 Firebase.kt\ncom/google/firebase/ktx/FirebaseKt\n*L\n1#1,158:1\n152#2,6:159\n152#2,6:165\n152#2,6:171\n152#2,6:177\n*S KotlinDebug\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseCommonKtxRegistrar\n*L\n143#1:159,6\n144#1:165,6\n145#1:171,6\n146#1:177,6\n*E\n"
    }
.end annotation


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


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lt4/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt4/p;

    .line 2
    .line 3
    const-class v1, Ls4/a;

    .line 4
    .line 5
    const-class v2, Lv8/t;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lt4/a;->b(Lt4/p;)Lf6/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v3, Lt4/p;

    .line 15
    .line 16
    const-class v4, Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    invoke-direct {v3, v1, v4}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lt4/h;

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    const/4 v6, 0x0

    .line 25
    invoke-direct {v1, v3, v5, v6}, Lt4/h;-><init>(Lt4/p;II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lf6/d;->a(Lt4/h;)V

    .line 29
    .line 30
    .line 31
    sget-object v1, Lq5/a;->c:Lq5/a;

    .line 32
    .line 33
    iput-object v1, v0, Lf6/d;->f:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {v0}, Lf6/d;->b()Lt4/a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lt4/p;

    .line 40
    .line 41
    const-class v3, Ls4/c;

    .line 42
    .line 43
    invoke-direct {v1, v3, v2}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lt4/a;->b(Lt4/p;)Lf6/d;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v7, Lt4/p;

    .line 51
    .line 52
    invoke-direct {v7, v3, v4}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 53
    .line 54
    .line 55
    new-instance v3, Lt4/h;

    .line 56
    .line 57
    invoke-direct {v3, v7, v5, v6}, Lt4/h;-><init>(Lt4/p;II)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Lf6/d;->a(Lt4/h;)V

    .line 61
    .line 62
    .line 63
    sget-object v3, Lq5/a;->d:Lq5/a;

    .line 64
    .line 65
    iput-object v3, v1, Lf6/d;->f:Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {v1}, Lf6/d;->b()Lt4/a;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v3, Lt4/p;

    .line 72
    .line 73
    const-class v7, Ls4/b;

    .line 74
    .line 75
    invoke-direct {v3, v7, v2}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Lt4/a;->b(Lt4/p;)Lf6/d;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    new-instance v8, Lt4/p;

    .line 83
    .line 84
    invoke-direct {v8, v7, v4}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 85
    .line 86
    .line 87
    new-instance v7, Lt4/h;

    .line 88
    .line 89
    invoke-direct {v7, v8, v5, v6}, Lt4/h;-><init>(Lt4/p;II)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v7}, Lf6/d;->a(Lt4/h;)V

    .line 93
    .line 94
    .line 95
    sget-object v7, Lq5/a;->e:Lq5/a;

    .line 96
    .line 97
    iput-object v7, v3, Lf6/d;->f:Ljava/lang/Object;

    .line 98
    .line 99
    invoke-virtual {v3}, Lf6/d;->b()Lt4/a;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    new-instance v7, Lt4/p;

    .line 104
    .line 105
    const-class v8, Ls4/d;

    .line 106
    .line 107
    invoke-direct {v7, v8, v2}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v7}, Lt4/a;->b(Lt4/p;)Lf6/d;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    new-instance v7, Lt4/p;

    .line 115
    .line 116
    invoke-direct {v7, v8, v4}, Lt4/p;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 117
    .line 118
    .line 119
    new-instance v4, Lt4/h;

    .line 120
    .line 121
    invoke-direct {v4, v7, v5, v6}, Lt4/h;-><init>(Lt4/p;II)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v4}, Lf6/d;->a(Lt4/h;)V

    .line 125
    .line 126
    .line 127
    sget-object v4, Lq5/a;->f:Lq5/a;

    .line 128
    .line 129
    iput-object v4, v2, Lf6/d;->f:Ljava/lang/Object;

    .line 130
    .line 131
    invoke-virtual {v2}, Lf6/d;->b()Lt4/a;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    filled-new-array {v0, v1, v3, v2}, [Lt4/a;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    return-object v0
.end method

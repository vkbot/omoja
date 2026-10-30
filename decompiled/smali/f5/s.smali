.class public final synthetic Lf5/s;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lb8/c;


# instance fields
.field public final synthetic b:Lf5/t;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lf5/q;

.field public final synthetic e:Lf5/f;

.field public final synthetic f:Le0/g;


# direct methods
.method public synthetic constructor <init>(Lf5/t;Ljava/lang/String;Lf5/q;Lf5/f;Le0/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf5/s;->b:Lf5/t;

    .line 5
    .line 6
    iput-object p2, p0, Lf5/s;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lf5/s;->d:Lf5/q;

    .line 9
    .line 10
    iput-object p4, p0, Lf5/s;->e:Lf5/f;

    .line 11
    .line 12
    iput-object p5, p0, Lf5/s;->f:Le0/g;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ly5/i;

    .line 2
    .line 3
    iget-object v0, p0, Lf5/s;->b:Lf5/t;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ly5/i;->q()Lcom/google/protobuf/a0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget v1, Lx7/b;->b:I

    .line 13
    .line 14
    const-string v1, "source is null"

    .line 15
    .line 16
    invoke-static {p1, v1}, Ld8/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lh8/l;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-direct {v1, v2, p1}, Lh8/l;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lf5/q;

    .line 26
    .line 27
    invoke-direct {p1, v0, v2}, Lf5/q;-><init>(Lf5/t;I)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lh8/w;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-direct {v3, v1, p1, v4}, Lh8/w;-><init>(Lx7/b;Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Landroidx/constraintlayout/core/state/a;

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    iget-object v5, p0, Lf5/s;->c:Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {p1, v5, v1}, Landroidx/constraintlayout/core/state/a;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lh8/w;

    .line 45
    .line 46
    invoke-direct {v1, v3, p1, v4}, Lh8/w;-><init>(Lx7/b;Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lf5/s;->d:Lf5/q;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Lx7/b;->b(Lb8/c;)Lh8/a0;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v1, p0, Lf5/s;->e:Lf5/f;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lx7/b;->b(Lb8/c;)Lh8/a0;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v1, p0, Lf5/s;->f:Le0/g;

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lx7/b;->b(Lb8/c;)Lh8/a0;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v1, Landroidx/constraintlayout/core/utils/a;

    .line 68
    .line 69
    invoke-direct {v1, v2}, Landroidx/constraintlayout/core/utils/a;-><init>(I)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Lh8/w;

    .line 73
    .line 74
    invoke-direct {v2, p1}, Lh8/w;-><init>(Lh8/a0;)V

    .line 75
    .line 76
    .line 77
    new-instance p1, Lr5/c;

    .line 78
    .line 79
    const/4 v3, 0x6

    .line 80
    invoke-direct {p1, v3, v1}, Lr5/c;-><init>(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Lh8/w;

    .line 84
    .line 85
    const/4 v3, 0x1

    .line 86
    invoke-direct {v1, v2, p1, v3}, Lh8/w;-><init>(Lx7/b;Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    sget p1, Lx7/b;->b:I

    .line 90
    .line 91
    const-string v2, "bufferSize"

    .line 92
    .line 93
    invoke-static {p1, v2}, Ld8/b;->b(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v2, Lh8/a0;

    .line 97
    .line 98
    invoke-direct {v2, v1, p1}, Lh8/a0;-><init>(Lh8/w;I)V

    .line 99
    .line 100
    .line 101
    new-instance p1, Lh8/s;

    .line 102
    .line 103
    invoke-direct {p1, v2}, Lh8/s;-><init>(Lh8/a0;)V

    .line 104
    .line 105
    .line 106
    new-instance v1, Lf5/q;

    .line 107
    .line 108
    invoke-direct {v1, v0, v5}, Lf5/q;-><init>(Lf5/t;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Li8/k;

    .line 112
    .line 113
    invoke-direct {v0, p1, v1, v4}, Li8/k;-><init>(Lx7/e;Lb8/c;I)V

    .line 114
    .line 115
    .line 116
    return-object v0
.end method

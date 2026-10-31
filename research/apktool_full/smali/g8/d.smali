.class public final Lg8/d;
.super Lb1/u;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Lb1/u;

.field public final c:Lb8/b;

.field public final d:Lb8/a;


# direct methods
.method public constructor <init>(Lb1/u;Lb8/b;Lb8/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg8/d;->b:Lb1/u;

    .line 5
    .line 6
    iput-object p2, p0, Lg8/d;->c:Lb8/b;

    .line 7
    .line 8
    iput-object p3, p0, Lg8/d;->d:Lb8/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final B(Lx7/a;)V
    .locals 1

    .line 1
    new-instance v0, Lg8/c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lg8/c;-><init>(Lg8/d;Lx7/a;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lg8/d;->b:Lb1/u;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lb1/u;->A(Lx7/a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

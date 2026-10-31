.class public final Lg8/a;
.super Lb1/u;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final b:Lg8/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lg8/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lg8/a;->b:Lg8/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final B(Lx7/a;)V
    .registers 3

    .line 1
    sget-object v0, Lc8/b;->b:Lc8/b;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lx7/a;->b(Lz7/a;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lx7/a;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.class public final Lp7/u;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ll9/l;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(ILl9/l;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lp7/u;->a:Ll9/l;

    .line 5
    .line 6
    iput p1, p0, Lp7/u;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a([BII)V
    .registers 5

    .line 1
    iget-object v0, p0, Lp7/u;->a:Ll9/l;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ll9/l;->write([BII)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lp7/u;->b:I

    .line 7
    .line 8
    sub-int/2addr p1, p3

    .line 9
    iput p1, p0, Lp7/u;->b:I

    .line 10
    .line 11
    iget p1, p0, Lp7/u;->c:I

    .line 12
    .line 13
    add-int/2addr p1, p3

    .line 14
    iput p1, p0, Lp7/u;->c:I

    .line 15
    .line 16
    return-void
.end method

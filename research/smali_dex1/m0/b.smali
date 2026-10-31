.class public final synthetic Lm0/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:Lm0/i;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lm0/i;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/b;->a:Lm0/i;

    .line 5
    .line 6
    iput p2, p0, Lm0/b;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/b;->a:Lm0/i;

    .line 2
    .line 3
    iget v1, p0, Lm0/b;->b:I

    .line 4
    .line 5
    iget v0, v0, Lm0/i;->j:I

    .line 6
    .line 7
    if-ne v1, v0, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method

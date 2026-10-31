.class Landroidx/transition/ChangeTransform$1;
.super Landroid/util/Property;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroidx/transition/ChangeTransform$PathAnimatorMatrix;",
        "[F>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform$1;->get(Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)[F

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public get(Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)[F
    .registers 2

    .line 8
    const/4 p1, 0x0

    return-object p1
.end method

.method public set(Landroidx/transition/ChangeTransform$PathAnimatorMatrix;[F)V
    .registers 3

    .line 9
    invoke-virtual {p1, p2}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->setValues([F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 2
    .line 3
    check-cast p2, [F

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/transition/ChangeTransform$1;->set(Landroidx/transition/ChangeTransform$PathAnimatorMatrix;[F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

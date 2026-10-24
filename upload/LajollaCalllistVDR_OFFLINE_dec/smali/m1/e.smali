.class public final Lm1/e;
.super Landroid/util/Property;
.source "SourceFile"


# static fields
.field public static final a:Lm1/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm1/e;

    invoke-direct {v0}, Lm1/e;-><init>()V

    sput-object v0, Lm1/e;->a:Lm1/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "circularRevealScrimColor"

    const-class v1, Ljava/lang/Integer;

    invoke-direct {p0, v1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lm1/g;

    invoke-interface {p1}, Lm1/g;->getCircularRevealScrimColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lm1/g;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Lm1/g;->setCircularRevealScrimColor(I)V

    return-void
.end method

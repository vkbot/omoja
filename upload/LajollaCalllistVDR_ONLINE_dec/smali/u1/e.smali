.class public final Lu1/e;
.super Landroid/util/Property;
.source "SourceFile"


# static fields
.field public static final a:Lu1/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu1/e;

    invoke-direct {v0}, Lu1/e;-><init>()V

    sput-object v0, Lu1/e;->a:Lu1/e;

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

    check-cast p1, Lu1/g;

    invoke-interface {p1}, Lu1/g;->getCircularRevealScrimColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lu1/g;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lu1/g;->setCircularRevealScrimColor(I)V

    return-void
.end method

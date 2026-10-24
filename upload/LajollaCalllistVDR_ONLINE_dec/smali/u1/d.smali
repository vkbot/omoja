.class public final Lu1/d;
.super Landroid/util/Property;
.source "SourceFile"


# static fields
.field public static final a:Lu1/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu1/d;

    invoke-direct {v0}, Lu1/d;-><init>()V

    sput-object v0, Lu1/d;->a:Lu1/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "circularReveal"

    const-class v1, Lu1/f;

    invoke-direct {p0, v1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu1/g;

    invoke-interface {p1}, Lu1/g;->getRevealInfo()Lu1/f;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lu1/g;

    check-cast p2, Lu1/f;

    invoke-interface {p1, p2}, Lu1/g;->setRevealInfo(Lu1/f;)V

    return-void
.end method

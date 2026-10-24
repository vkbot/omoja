.class public final Lm1/d;
.super Landroid/util/Property;
.source "SourceFile"


# static fields
.field public static final a:Lm1/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm1/d;

    invoke-direct {v0}, Lm1/d;-><init>()V

    sput-object v0, Lm1/d;->a:Lm1/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "circularReveal"

    const-class v1, Lm1/f;

    invoke-direct {p0, v1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lm1/g;

    invoke-interface {p1}, Lm1/g;->getRevealInfo()Lm1/f;

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lm1/g;

    check-cast p2, Lm1/f;

    invoke-interface {p1, p2}, Lm1/g;->setRevealInfo(Lm1/f;)V

    return-void
.end method

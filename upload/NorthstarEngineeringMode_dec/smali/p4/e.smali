.class public Lp4/e;
.super Lp4/d;
.source "SourceFile"


# static fields
.field public static final r:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lp4/e;->r:Ljava/lang/Integer;

    return-void
.end method

.method public varargs constructor <init>(Lq4/c;Ljava/lang/Number;[Ljava/lang/Object;)V
    .locals 0

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lp4/d;-><init>(Lq4/c;[Ljava/lang/Object;)V

    return-void
.end method

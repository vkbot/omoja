.class public final Lp5/a$a;
.super Li5/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Li5/h0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Li5/h0$a;

    new-instance v1, Lp5/a$a;

    const-string v2, "default"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Li5/h0;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lp5/a$a;

    const-string v3, "preserve"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Li5/h0;-><init>(Ljava/lang/String;I)V

    filled-new-array {v1, v2}, [Lp5/a$a;

    move-result-object v1

    invoke-direct {v0, v1}, Li5/h0$a;-><init>([Li5/h0;)V

    sput-object v0, Lp5/a$a;->c:Li5/h0$a;

    return-void
.end method

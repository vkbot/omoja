.class public final Ld3/g$a;
.super Li5/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Li5/h0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Li5/h0$a;

    new-instance v1, Ld3/g$a;

    const-string/jumbo v2, "view"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Li5/h0;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ld3/g$a;

    const-string v3, "edit"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Li5/h0;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ld3/g$a;

    const-string v4, "backwardCompatible"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Li5/h0;-><init>(Ljava/lang/String;I)V

    filled-new-array {v1, v2, v3}, [Ld3/g$a;

    move-result-object v1

    invoke-direct {v0, v1}, Li5/h0$a;-><init>([Li5/h0;)V

    sput-object v0, Ld3/g$a;->c:Li5/h0$a;

    return-void
.end method

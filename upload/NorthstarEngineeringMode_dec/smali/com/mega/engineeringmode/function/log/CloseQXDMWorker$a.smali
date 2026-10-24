.class public final Lcom/mega/engineeringmode/function/log/CloseQXDMWorker$a;
.super Lo3/i;
.source "SourceFile"

# interfaces
.implements Ln3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/log/CloseQXDMWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo3/i;",
        "Ln3/a<",
        "Ln2/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/mega/engineeringmode/function/log/CloseQXDMWorker$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mega/engineeringmode/function/log/CloseQXDMWorker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo3/i;-><init>(I)V

    sput-object v0, Lcom/mega/engineeringmode/function/log/CloseQXDMWorker$a;->r:Lcom/mega/engineeringmode/function/log/CloseQXDMWorker$a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ln2/i;

    invoke-direct {p0}, Ln2/i;-><init>()V

    return-object p0
.end method

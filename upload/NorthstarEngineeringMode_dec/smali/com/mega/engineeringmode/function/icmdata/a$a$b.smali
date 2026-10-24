.class public final Lcom/mega/engineeringmode/function/icmdata/a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/icmdata/a$a;->onErrorEvent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Lcom/mega/engineeringmode/function/icmdata/a$a;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/icmdata/a$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/icmdata/a$a$b;->r:Lcom/mega/engineeringmode/function/icmdata/a$a;

    iput p2, p0, Lcom/mega/engineeringmode/function/icmdata/a$a$b;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mega/engineeringmode/function/icmdata/a$a$b;->r:Lcom/mega/engineeringmode/function/icmdata/a$a;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/icmdata/a$a;->a:Lcom/mega/engineeringmode/function/icmdata/a;

    iget p0, p0, Lcom/mega/engineeringmode/function/icmdata/a$a$b;->c:I

    const-string v1, "--"

    invoke-static {v0, p0, v1}, Lcom/mega/engineeringmode/function/icmdata/a;->a(Lcom/mega/engineeringmode/function/icmdata/a;ILjava/lang/String;)V

    return-void
.end method

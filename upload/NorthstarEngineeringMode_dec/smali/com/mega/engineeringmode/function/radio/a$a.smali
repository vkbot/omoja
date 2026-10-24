.class public final Lcom/mega/engineeringmode/function/radio/a$a;
.super Landroid/hardware/radio/RadioTuner$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/radio/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/radio/a;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/radio/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/radio/a$a;->a:Lcom/mega/engineeringmode/function/radio/a;

    invoke-direct {p0}, Landroid/hardware/radio/RadioTuner$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onConfigurationChanged(): config = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioHelper"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lx1/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lx1/c;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/radio/a$a;->a:Lcom/mega/engineeringmode/function/radio/a;

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/radio/a;->a(Ljava/util/function/Consumer;)V

    const-string p0, "RadioHelper"

    const-string p1, "No TUNER_DEVICE found on board"

    invoke-static {p0, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onError(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onError(); status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioHelper"

    invoke-static {v1, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lx1/e;

    invoke-direct {v0, p1}, Lx1/e;-><init>(I)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/radio/a$a;->a:Lcom/mega/engineeringmode/function/radio/a;

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/radio/a;->a(Ljava/util/function/Consumer;)V

    const-string p0, "RadioHelper"

    const-string p1, "No TUNER_DEVICE found on board"

    invoke-static {p0, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onMetadataChanged(Landroid/hardware/radio/RadioMetadata;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onMetadataChanged(); metadata: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioHelper"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lx1/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lx1/c;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/radio/a$a;->a:Lcom/mega/engineeringmode/function/radio/a;

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/radio/a;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onProgramInfoChanged() - info =  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioHelper"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lx1/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lx1/d;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/radio/a$a;->a:Lcom/mega/engineeringmode/function/radio/a;

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/radio/a;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

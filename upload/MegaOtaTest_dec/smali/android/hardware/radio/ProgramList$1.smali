.class Landroid/hardware/radio/ProgramList$1;
.super Landroid/hardware/radio/ProgramList$ListCallback;
.source "ProgramList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/radio/ProgramList;->registerListCallback(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$ListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/radio/ProgramList;


# direct methods
.method constructor <init>(Landroid/hardware/radio/ProgramList;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/radio/ProgramList;

    .line 62
    iput-object p1, p0, Landroid/hardware/radio/ProgramList$1;->this$0:Landroid/hardware/radio/ProgramList;

    invoke-direct {p0}, Landroid/hardware/radio/ProgramList$ListCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChanged(Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .locals 2
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onItemRemoved(Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .locals 2
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

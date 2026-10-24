.class public final Landroid/hardware/radio/ProgramList;
.super Ljava/lang/Object;
.source "ProgramList.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ProgramList$Chunk;,
        Landroid/hardware/radio/ProgramList$Filter;,
        Landroid/hardware/radio/ProgramList$OnCloseListener;,
        Landroid/hardware/radio/ProgramList$OnCompleteListener;,
        Landroid/hardware/radio/ProgramList$ListCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private putLocked(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 2
    .param p1, "value"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeLocked(Landroid/hardware/radio/ProgramSelector$Identifier;)V
    .locals 2
    .param p1, "key"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addOnCompleteListener(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/radio/ProgramList$OnCompleteListener;

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addOnCompleteListener(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$OnCompleteListener;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/radio/ProgramList$OnCompleteListener;

    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method apply(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 2
    .param p1, "chunk"    # Landroid/hardware/radio/ProgramList$Chunk;

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 2
    .param p1, "id"    # Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 148
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerListCallback(Landroid/hardware/radio/ProgramList$ListCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/radio/ProgramList$ListCallback;

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerListCallback(Ljava/util/concurrent/Executor;Landroid/hardware/radio/ProgramList$ListCallback;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/radio/ProgramList$ListCallback;

    .line 62
    new-instance v0, Landroid/hardware/radio/ProgramList$1;

    invoke-direct {v0, p0}, Landroid/hardware/radio/ProgramList$1;-><init>(Landroid/hardware/radio/ProgramList;)V

    invoke-virtual {p0, v0}, Landroid/hardware/radio/ProgramList;->registerListCallback(Landroid/hardware/radio/ProgramList$ListCallback;)V

    .line 71
    return-void
.end method

.method public removeOnCompleteListener(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/radio/ProgramList$OnCompleteListener;

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setOnCloseListener(Landroid/hardware/radio/ProgramList$OnCloseListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/radio/ProgramList$OnCloseListener;

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterListCallback(Landroid/hardware/radio/ProgramList$ListCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/radio/ProgramList$ListCallback;

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

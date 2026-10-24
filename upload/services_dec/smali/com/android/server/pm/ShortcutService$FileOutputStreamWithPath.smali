.class Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
.super Ljava/io/FileOutputStream;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileOutputStreamWithPath"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1406
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1407
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->mFile:Ljava/io/File;

    .line 1408
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;->mFile:Ljava/io/File;

    return-object v0
.end method

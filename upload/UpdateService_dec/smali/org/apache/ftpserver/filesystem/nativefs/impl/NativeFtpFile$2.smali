.class Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$2;
.super Ljava/io/FileOutputStream;
.source "NativeFtpFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;->createOutputStream(J)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

.field final synthetic val$raf:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;Ljava/io/FileDescriptor;Ljava/io/RandomAccessFile;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;
    .param p2, "x0"    # Ljava/io/FileDescriptor;

    .line 363
    iput-object p1, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$2;->this$0:Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile;

    iput-object p3, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$2;->val$raf:Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 367
    iget-object v0, p0, Lorg/apache/ftpserver/filesystem/nativefs/impl/NativeFtpFile$2;->val$raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 368
    return-void
.end method

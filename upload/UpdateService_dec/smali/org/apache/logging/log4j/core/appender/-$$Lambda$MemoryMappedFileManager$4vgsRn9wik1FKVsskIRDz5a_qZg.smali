.class public final synthetic Lorg/apache/logging/log4j/core/appender/-$$Lambda$MemoryMappedFileManager$4vgsRn9wik1FKVsskIRDz5a_qZg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# instance fields
.field public final synthetic f$0:Ljava/nio/MappedByteBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/MappedByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/-$$Lambda$MemoryMappedFileManager$4vgsRn9wik1FKVsskIRDz5a_qZg;->f$0:Ljava/nio/MappedByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/-$$Lambda$MemoryMappedFileManager$4vgsRn9wik1FKVsskIRDz5a_qZg;->f$0:Ljava/nio/MappedByteBuffer;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->lambda$unsafeUnmap$0(Ljava/nio/MappedByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

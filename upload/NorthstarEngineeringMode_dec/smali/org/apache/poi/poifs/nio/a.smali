.class public final synthetic Lorg/apache/poi/poifs/nio/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Ljava/lang/invoke/MethodHandle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/nio/a;->a:Ljava/lang/Class;

    iput-object p2, p0, Lorg/apache/poi/poifs/nio/a;->b:Ljava/lang/invoke/MethodHandle;

    return-void
.end method


# virtual methods
.method public final freeBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/nio/a;->a:Ljava/lang/Class;

    iget-object p0, p0, Lorg/apache/poi/poifs/nio/a;->b:Ljava/lang/invoke/MethodHandle;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/poifs/nio/CleanerUtil;->c(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;Ljava/nio/ByteBuffer;)V

    return-void
.end method

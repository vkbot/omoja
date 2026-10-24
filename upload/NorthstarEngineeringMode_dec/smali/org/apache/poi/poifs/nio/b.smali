.class public final synthetic Lorg/apache/poi/poifs/nio/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic a:Ljava/lang/invoke/MethodHandle;

.field public final synthetic b:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/nio/b;->a:Ljava/lang/invoke/MethodHandle;

    iput-object p2, p0, Lorg/apache/poi/poifs/nio/b;->b:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/nio/b;->a:Ljava/lang/invoke/MethodHandle;

    iget-object p0, p0, Lorg/apache/poi/poifs/nio/b;->b:Ljava/nio/ByteBuffer;

    invoke-static {v0, p0}, Lorg/apache/poi/poifs/nio/CleanerUtil;->b(Ljava/lang/invoke/MethodHandle;Ljava/nio/ByteBuffer;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

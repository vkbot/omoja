.class public final Lorg/apache/poi/poifs/nio/CleanerUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;
    }
.end annotation

.annotation build Lorg/apache/poi/util/SuppressForbidden;
    value = "uses java.security features deprecated in java 17 - no other option though"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CLEANER:Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;

.field public static final UNMAP_NOT_SUPPORTED_REASON:Ljava/lang/String;

.field public static final UNMAP_SUPPORTED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg5/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg5/f;-><init>(I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;

    sput-object v0, Lorg/apache/poi/poifs/nio/CleanerUtil;->CLEANER:Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;

    sput-boolean v1, Lorg/apache/poi/poifs/nio/CleanerUtil;->UNMAP_SUPPORTED:Z

    sput-object v3, Lorg/apache/poi/poifs/nio/CleanerUtil;->UNMAP_NOT_SUPPORTED_REASON:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sput-object v3, Lorg/apache/poi/poifs/nio/CleanerUtil;->CLEANER:Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;

    const/4 v1, 0x0

    sput-boolean v1, Lorg/apache/poi/poifs/nio/CleanerUtil;->UNMAP_SUPPORTED:Z

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/nio/CleanerUtil;->UNMAP_NOT_SUPPORTED_REASON:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/apache/poi/poifs/nio/CleanerUtil;->unmapHackImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/invoke/MethodHandle;Ljava/nio/ByteBuffer;)Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/nio/CleanerUtil;->lambda$null$0(Ljava/lang/invoke/MethodHandle;Ljava/nio/ByteBuffer;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/poifs/nio/CleanerUtil;->lambda$newBufferCleaner$1(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static getCleaner()Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/nio/CleanerUtil;->CLEANER:Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;

    return-object v0
.end method

.method private static synthetic lambda$newBufferCleaner$1(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lorg/apache/poi/poifs/nio/b;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/nio/b;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/nio/ByteBuffer;)V

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->isFatal(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->rethrow(Ljava/lang/Throwable;)V

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unable to unmap the mapped buffer"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "buffer is not an instance of "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unmapping only works with direct buffers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$null$0(Ljava/lang/invoke/MethodHandle;Ljava/nio/ByteBuffer;)Ljava/lang/Throwable;
    .locals 0

    :try_start_0
    invoke-polymorphic {p0, p1}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->isFatal(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/apache/poi/util/ExceptionUtil;->rethrow(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static newBufferCleaner(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/invoke/MethodHandle;",
            ")",
            "Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/poifs/nio/a;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/nio/a;-><init>(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)V

    return-object v0
.end method

.method private static unmapHackImpl()Ljava/lang/Object;
    .locals 14
    .annotation build Lorg/apache/poi/util/SuppressForbidden;
        value = "Java 9 Jigsaw allows access to sun.misc.Cleaner, so setAccessible works"
    .end annotation

    const-class v0, Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string/jumbo v4, "sun.misc.Unsafe"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "invokeCleaner"

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const-string/jumbo v6, "theUnsafe"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/apache/poi/poifs/nio/CleanerUtil;->newBufferCleaner(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    :try_start_1
    const-string v4, "java.nio.DirectByteBuffer"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "cleaner"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "clean"

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v9}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v10

    invoke-virtual {v1, v7, v8, v10}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v8

    const-class v10, Ljava/util/Objects;

    const-string v11, "nonNull"

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v13, Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v13

    invoke-virtual {v1, v10, v11, v13}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-static {v12, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    const-class v10, Ljava/lang/Void;

    invoke-static {v10, v2}, Ljava/lang/invoke/MethodHandles;->constant(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v7, v3, v6

    invoke-static {v2, v6, v3}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    invoke-static {v1, v8, v2}, Ljava/lang/invoke/MethodHandles;->guardWithTest(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/invoke/MethodHandles;->filterReturnValue(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-static {v9, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/invoke/MethodHandle;->asType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/apache/poi/poifs/nio/CleanerUtil;->newBufferCleaner(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Lorg/apache/poi/poifs/nio/CleanerUtil$BufferCleaner;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    :goto_0
    throw v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unmapping is not supported on this platform, because internal Java APIs are not compatible with this Hadoop version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unmapping is not supported, because not all required permissions are given to the Hadoop JAR file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " [Please grant at least the following permissions: RuntimePermission(\"accessClassInPackage.sun.misc\")  and ReflectPermission(\"suppressAccessChecks\")]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ByteBufferCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Java9Cleaner"
.end annotation


# instance fields
.field private final invokeCleaner:Ljava/lang/reflect/Method;

.field private final theUnsafe:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "sun.misc.Unsafe"

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "theUnsafe"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;->theUnsafe:Ljava/lang/Object;

    .line 26
    .line 27
    const-class v1, Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "invokeCleaner"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;->invokeCleaner:Ljava/lang/reflect/Method;

    .line 40
    .line 41
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/input/ByteBufferCleaner$1;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;-><init>()V

    return-void
.end method


# virtual methods
.method public clean(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;->invokeCleaner:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;->theUnsafe:Ljava/lang/Object;

    .line 4
    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

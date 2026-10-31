.class public Lorg/apache/commons/io/output/NullPrintStream;
.super Ljava/io/PrintStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/io/output/NullPrintStream;

.field public static final NULL_PRINT_STREAM:Lorg/apache/commons/io/output/NullPrintStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/NullPrintStream;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/output/NullPrintStream;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/io/output/NullPrintStream;->INSTANCE:Lorg/apache/commons/io/output/NullPrintStream;

    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/io/output/NullPrintStream;->NULL_PRINT_STREAM:Lorg/apache/commons/io/output/NullPrintStream;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/io/output/NullOutputStream;->INSTANCE:Lorg/apache/commons/io/output/NullOutputStream;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

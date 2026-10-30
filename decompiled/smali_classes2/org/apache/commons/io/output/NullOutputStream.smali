.class public Lorg/apache/commons/io/output/NullOutputStream;
.super Ljava/io/OutputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/io/output/NullOutputStream;

.field public static final NULL_OUTPUT_STREAM:Lorg/apache/commons/io/output/NullOutputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/output/NullOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/io/output/NullOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/io/output/NullOutputStream;->INSTANCE:Lorg/apache/commons/io/output/NullOutputStream;

    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/io/output/NullOutputStream;->NULL_OUTPUT_STREAM:Lorg/apache/commons/io/output/NullOutputStream;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0

    .line 6
    return-void
.end method

.method public write([B)V
    .locals 0

    .line 5
    return-void
.end method

.method public write([BII)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->checkFromIndexSize([BII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

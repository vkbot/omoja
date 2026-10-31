.class public Lorg/apache/commons/io/input/XmlStreamReaderException;
.super Ljava/io/IOException;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bomEncoding:Ljava/lang/String;

.field private final contentTypeEncoding:Ljava/lang/String;

.field private final contentTypeMime:Ljava/lang/String;

.field private final xmlEncoding:Ljava/lang/String;

.field private final xmlGuessEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 15
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->contentTypeMime:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->contentTypeEncoding:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->bomEncoding:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->xmlGuessEncoding:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p6, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->xmlEncoding:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getBomEncoding()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->bomEncoding:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentTypeEncoding()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->contentTypeEncoding:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentTypeMime()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->contentTypeMime:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->xmlEncoding:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getXmlGuessEncoding()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReaderException;->xmlGuessEncoding:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.class public Lorg/apache/commons/io/input/TailerListenerAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/input/TailerListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public endOfFileReached()V
    .registers 1

    .line 1
    return-void
.end method

.method public fileNotFound()V
    .registers 1

    .line 1
    return-void
.end method

.method public fileRotated()V
    .registers 1

    .line 1
    return-void
.end method

.method public handle(Ljava/lang/Exception;)V
    .registers 2

    .line 1
    return-void
.end method

.method public handle(Ljava/lang/String;)V
    .registers 2

    .line 2
    return-void
.end method

.method public init(Lorg/apache/commons/io/input/Tailer;)V
    .registers 2

    .line 1
    return-void
.end method

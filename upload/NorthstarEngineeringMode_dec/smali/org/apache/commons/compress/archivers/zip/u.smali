.class public final Lorg/apache/commons/compress/archivers/zip/u;
.super Lorg/apache/commons/compress/archivers/zip/a;
.source "SourceFile"


# static fields
.field public static final y:Lorg/apache/commons/compress/archivers/zip/d1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/d1;

    const/16 v1, 0x6375

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/d1;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/u;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lorg/apache/commons/compress/archivers/zip/d1;
    .locals 0

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/u;->y:Lorg/apache/commons/compress/archivers/zip/d1;

    return-object p0
.end method

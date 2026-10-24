.class public final Lorg/apache/commons/compress/archivers/zip/r0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Lorg/apache/commons/compress/archivers/zip/r0$c;

.field public static final c:Lorg/apache/commons/compress/archivers/zip/r0$c;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/r0$c;

    const-string v1, "always"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/r0$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/r0$c;->b:Lorg/apache/commons/compress/archivers/zip/r0$c;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/r0$c;

    const-string v1, "never"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/r0$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/r0$c;->c:Lorg/apache/commons/compress/archivers/zip/r0$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/r0$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/r0$c;->a:Ljava/lang/String;

    return-object p0
.end method

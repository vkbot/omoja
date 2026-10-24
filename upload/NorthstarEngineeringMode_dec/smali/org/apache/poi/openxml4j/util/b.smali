.class public final synthetic Lorg/apache/poi/openxml4j/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg5/a0;


# instance fields
.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/openxml4j/util/b;->c:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/openxml4j/util/b;->c:J

    invoke-static {v0, v1}, Lorg/apache/poi/openxml4j/util/ZipArchiveFakeEntry;->c(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

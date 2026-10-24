.class Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;
.super Lp2/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->source()Lp2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;


# direct methods
.method public constructor <init>(Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;Lp2/d0;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;->this$0:Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;

    invoke-direct {p0, p2}, Lp2/q;-><init>(Lp2/d0;)V

    return-void
.end method


# virtual methods
.method public read(Lp2/k;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lp2/q;->read(Lp2/k;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;->this$0:Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;

    iput-object p1, p0, Lretrofit2/OkHttpCall$ExceptionCatchingRequestBody;->thrownException:Ljava/io/IOException;

    throw p1
.end method

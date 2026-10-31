.class public Lcom/hoho/android/usbserial/driver/SerialTimeoutException;
.super Ljava/io/InterruptedIOException;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ljava/io/InterruptedIOException;->bytesTransferred:I

    .line 5
    .line 6
    return-void
.end method

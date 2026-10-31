.class public Lorg/vosk/Recognizer;
.super Lcom/sun/jna/PointerType;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/AutoCloseable;


# direct methods
.method public constructor <init>(Lorg/vosk/Model;F)V
    .registers 3

    .line 30
    invoke-static {p1, p2}, Lorg/vosk/LibVosk;->vosk_recognizer_new(Lorg/vosk/Model;F)Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    .line 31
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    if-eqz p1, :cond_e

    return-void

    .line 32
    :cond_e
    const-string p1, "Failed to create a recognizer"

    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(Lorg/vosk/Model;FLjava/lang/String;)V
    .registers 4

    .line 33
    invoke-virtual {p1}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lorg/vosk/LibVosk;->vosk_recognizer_new_grm(Lcom/sun/jna/Pointer;FLjava/lang/String;)Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    .line 34
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    if-eqz p1, :cond_12

    return-void

    .line 35
    :cond_12
    const-string p1, "Failed to create a recognizer"

    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(Lorg/vosk/Model;FLorg/vosk/SpeakerModel;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p3}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-static {p1, p2, p3}, Lorg/vosk/LibVosk;->vosk_recognizer_new_spk(Lcom/sun/jna/Pointer;FLcom/sun/jna/Pointer;)Lcom/sun/jna/Pointer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_16

    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    const-string p1, "Failed to create a recognizer"

    .line 24
    .line 25
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    throw p1
.end method


# virtual methods
.method public acceptWaveForm([BI)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2}, Lorg/vosk/LibVosk;->vosk_recognizer_accept_waveform(Lcom/sun/jna/Pointer;[BI)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public acceptWaveForm([FI)Z
    .registers 4

    .line 11
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/vosk/LibVosk;->vosk_recognizer_accept_waveform_f(Lcom/sun/jna/Pointer;[FI)Z

    move-result p1

    return p1
.end method

.method public acceptWaveForm([SI)Z
    .registers 4

    .line 10
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/vosk/LibVosk;->vosk_recognizer_accept_waveform_s(Lcom/sun/jna/Pointer;[SI)Z

    move-result p1

    return p1
.end method

.method public close()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/vosk/LibVosk;->vosk_recognizer_free(Lcom/sun/jna/Pointer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getFinalResult()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/vosk/LibVosk;->vosk_recognizer_final_result(Lcom/sun/jna/Pointer;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getPartialResult()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/vosk/LibVosk;->vosk_recognizer_partial_result(Lcom/sun/jna/Pointer;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/vosk/LibVosk;->vosk_recognizer_result(Lcom/sun/jna/Pointer;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/vosk/LibVosk;->vosk_recognizer_reset(Lcom/sun/jna/Pointer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setGrammar(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lorg/vosk/LibVosk;->vosk_recognizer_set_grm(Lcom/sun/jna/Pointer;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setMaxAlternatives(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lorg/vosk/LibVosk;->vosk_recognizer_set_max_alternatives(Lcom/sun/jna/Pointer;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setPartialWords(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lorg/vosk/LibVosk;->vosk_recognizer_set_partial_words(Lcom/sun/jna/Pointer;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setSpeakerModel(Lorg/vosk/SpeakerModel;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {v0, p1}, Lorg/vosk/LibVosk;->vosk_recognizer_set_spk_model(Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setWords(Z)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lorg/vosk/LibVosk;->vosk_recognizer_set_words(Lcom/sun/jna/Pointer;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

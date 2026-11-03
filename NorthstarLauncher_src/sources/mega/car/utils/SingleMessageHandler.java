package mega.car.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.List;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SingleMessageHandler<T> implements Handler.Callback {
    private final int mHandledMessageWhat;
    private final Handler mHandler;

    protected abstract void handleEvent(T t);

    public SingleMessageHandler(Looper looper, int i) {
        this.mHandledMessageWhat = i;
        this.mHandler = new Handler(looper, this);
    }

    public SingleMessageHandler(Handler handler, int i) {
        this(handler.getLooper(), i);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != this.mHandledMessageWhat) {
            return true;
        }
        ((List) message.obj).forEach(new Consumer<T>() { // from class: mega.car.utils.SingleMessageHandler.1
            @Override // java.util.function.Consumer
            public void accept(T t) {
                SingleMessageHandler.this.handleEvent(t);
            }
        });
        return true;
    }

    public void sendEvents(List<T> list) {
        Handler handler = this.mHandler;
        handler.sendMessage(handler.obtainMessage(this.mHandledMessageWhat, list));
    }
}

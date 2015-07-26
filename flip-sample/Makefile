TARGET := flip-sample
OBJS := flip-sample.o

RM := rm -f

CXXFLAGS += 
LDFLAGS += -lopencv_core -lopencv_imgproc -lopencv_highgui

.PHONY := all clean

all : $(TARGET)

$(TARGET) : $(OBJS)
	$(CXX) -o $@ $^ $(LDFLAGS)

.cc.o :
	$(CXX) -o $@ -c $< $(CXXFLAGS)

clean :
	$(RM) $(TARGET) $(OBJS)


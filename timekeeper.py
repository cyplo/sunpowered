import datetime
import time

save_interval = 60 * 5
min_plot_interval = 60

class TimeKeeper:
    def __init__(self):
        self.plotted()
        self.saved()

    def plotted(self):
        self.last_plotted = time.time()
        self.plotting = False

    def saved(self):
        self.last_saved = time.time()

    def can_sample(self):
        return not self.plotting

    def can_plot(self):
        result = ((time.time() - self.last_plotted) > min_plot_interval)
        return result

    def can_save(self):
        result = ((time.time() - self.last_saved) > save_interval)
        return result


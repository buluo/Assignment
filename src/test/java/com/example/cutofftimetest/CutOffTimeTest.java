package com.example.cutofftimetest;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import java.time.LocalDate;
import static org.hamcrest.Matchers.equalTo;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;

@SpringBootTest
@AutoConfigureMockMvc
public class CutOffTimeTest {

    @Autowired
    private MockMvc mockMvc;

    private static final String PATH = "/cut-off-time";


    @Test
    public void test_past_date() throws Exception {
        this.mockMvc
                .perform(
                        get(PATH)
                                .param("currency1", "CZK")
                                .param("currency2", "EUR")
                                .param("date", LocalDate.now().minusDays(1).toString())
                )
                .andExpect(MockMvcResultMatchers.status().isBadRequest());
    }

    @Test
    public void test_wrong_currency() throws Exception {
        this.mockMvc
                .perform(
                        get(PATH)
                                .param("currency1", "CZK")
                                .param("currency2", "WRONG")
                                .param("date", LocalDate.now().toString())
                )
                .andExpect(MockMvcResultMatchers.status().isNotFound());
    }

    @Test
    public void test_right_cut_off_time() throws Exception {
        LocalDate today = LocalDate.now();

        this.mockMvc
                .perform(
                        get(PATH)
                                .param("currency1", "CZK")
                                .param("currency2", "DKK")
                                .param("date", today.toString())
                )
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andDo(print())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON))
                .andExpect(
                        content().string(
                                equalTo("11:00")
                        )
                );
    }

}
